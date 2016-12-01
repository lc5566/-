$(function(){
	function format(arr){
		var r={};
		$.each(arr,function(i,v){
		   var key=v.pinyin.charAt(0).toUpperCase();
		   if(!r[key]){
		   	 r[key]=[];
		   	 r[key].push(v);
		   }else{
		   	 r[key].push(v);
		   }
		})
		return r;
	}
	var con=[];
	var contacts;
	var table=[];
	function render(arr){
		$('#contact,#c-index').empty();
		    $('#tip').text(con[0]);
		    var data=format(arr);
		    con=Object.keys(data).sort();
		   
			i=0;
			for(var letter in con){
				i++;
		    $('<div></div>').text(con[letter]).appendTo("#c-index")
            $('<dt>'+con[letter]+'</dt>').appendTo('#contact')
            $.each(data[con[letter]],function(i,v){
               $('<dd><a href="tel:'+v.phone+'"></a>'+v.name+'</dd>').appendTo('#contact');
            })
			}
			$('#c-index').height(i*23);
			$('dt').prev().css('border','none');
			
			table=[];
			$('dt').each(function(i,v){
				table.push($(this).offset().top-70);
			})
			
	}
	
	$.ajax({
		url:'/user',
		type:'get',
		success:function(r){
			contacts=r;
			render(contacts);
		}
		  
	})
	$('.search').on("keyup",function(){
		var val=$.trim($(this).val());
		var tem=[];
		contacts.forEach(function(v,i){
			if(v.name.indexOf(val)!==-1||v.phone.indexOf(val)!==-1||v.pinyin.indexOf(val)!==-1){
				tem.push(v);
				console.log(v);
			}
		})
		render(tem);
		
		
		
	})
	$(window).on('scroll',function(){
		var index;
		var top=$(window).scrollTop();
		table.forEach(function(v,i){
			if(v<top){
				index=i;
			}
			
		})
		$("#tip").text(con[index]);
		
	})
	$("#c-index").on("click",'div',function(){
		var index=$(this).index();
		$(window).scrollTop(table[index]+30);
		
	})
})
