var express=require('express');
var app=express();//API app会返回一个数据
var mysql=require('mysql');
var pinyin=require('pinyin');
var bodyParser=require('body-parser');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:false}));
var con=mysql.createConnection({
	  host     : 'sqld.duapp.com',
	  port     :4050,
	  user     : '956b89de21a54610bef6585306350b2',
	  password : 'e10865122ac243138fe8f8aed159d21c',
	  database : 'rzCfKCdeGDXVhcEPJGqJ'
});
con.connect();
app.use(express.static(__dirname+'/site/public'))
app.listen(18080,function(){
	//监听,找一个端口号，创建一个服务器
})
app.get('/index',function(req,res){   //请求admin时候，调用函数
	res.sendFile(__dirname+'/site/index.html')
})
app.get('/',function(req,res){
	res.sendFile(__dirname+'/site/main.html')
})
////////////////////////////////////////
app.get('/user',function(req,res){
	var sql='select * from user';
	con.query(sql,function(err, rows, fields){
		res.json(rows);
	})
}).post('/user',function(req,res){
	var sql='insert into user set?';
	con.query(sql,{name:''},function(err,r){
		res.json({id:r.insertId});
	})
}).put('/user',function(req,res){
	  if(req.body.name){
	  	var o=pinyin(req.body.name,{style:pinyin.STYLE_NORMAL}).join('');
	  	var sql='update user set name=?,pinyin=? where id =?';
	  	con.query(sql,[req.body.name,o,req.body.id],function(err,r){
	  		 if(!err){
	  		 	  res.json(r.name);
	  		 }
	  	})
	  }else if(req.body.phone){
	  	var sql='update user set phone=? where id=?';
	  	con.query(sql,[req.body.phone,req.body.id],function(err,r){
	  		if(!err){
	  			res.json(r.phone)
	  		}
	  	})
	  }
}).delete('/user',function(req,res){
	 var sql='delete from user where id=?'//后面是数组就是数值
	 con.query(sql,[req.body.id],function(err,r){
	 	if(!err){
	 	  res.json({state:'ok'}) 	
	 	}
	 })
})

