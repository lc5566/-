$(function(){
	$.ajax({
		type:'get',
		url:'/user',
		success:function(data){
			data.forEach(function(v){
				$('<tr data-id="'+v.id+'"><td>'+v.id+'</td><td><input type="text" class="from-control name" value="'+v.name+'"></td><td><input type="text" class="from-control phone" value="'+v.phone+'"><td class="delete">x</td></td></tr>').appendTo('tbody');
			})
		}
	})
	$('#plus').on('click',function(){
		$.ajax({
			type:'post',
			url:'/user',
			data:{a:1},
			success:function(data){
				$('<tr data-id="'+data.id+'"><td>'+data.id+'</td><td><input type="text" class="from-control name" value=" "></td><td><input type="text" class="from-control phone" value=" "><td class="delete">x</td></td></tr>').appendTo('tbody');
			}
		})
	})
	var t;
	$('tbody').on('keyup','.from-control',function(){
		var data={};
		data.id=$(this).closest('tr').attr('data-id');
		if($(this).hasClass('name')){
			data.name=$.trim($(this).val());
		}else if($(this).hasClass('phone')){
			data.phone=$.trim($(this).val());
		}else{}
		clearTimeout(t);
		t=setTimeout(function(){
		$.ajax({
			type:"put",
			url:"/user",
			data:data,
			success:function(r){
				console.log('更新成功');
			}
		});
		})
	})
	$('tbody').on('click','.delete',function(){
		tr=$(this).closest('tr');
		$.ajax({
            type:'delete',
            url:'/user',
            data:{id:tr.attr('data-id')},
            success:function(data){
               if(data.state=='ok'){
               	   tr.remove();
               }
            }
		})
	})
})
