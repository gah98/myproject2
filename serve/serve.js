const express=require('express');
const mysql=require('mysql');
const cors=require('cors');
const bodyParser=require('body-parser');
const app=express();
app.listen(4000);
const pool=mysql.createPool({
  host:'127.0.0.1',
  port:'3306',
  user:'root',
  password:'',
  database:'songlin',
  charset:'utf8',
  connectionLimit:20
});
app.use(express.static('./public'))
app.use(bodyParser.urlencoded({extended:false}));
app.use(cors({
  origin:['http://localhost:8081','http://127.0.0.1:8081']
}));

app.post('/register',(req,res)=>{
  let phone=req.body.phone;
  let password=req.body.password;
  let sql2='SELECT phone FROM user WHERE phone=?';
  pool.query(sql2,[phone],(error,result)=>{
    if(error) throw error;
    console.log(result);
    if(result.length>0){
      res.send({message:"插入失败",code:4,results:result});
    }else{
      let sql='INSERT INTO user(phone,password) VALUES(?,?)';
      pool.query(sql,[phone,password],(error,result)=>{
        if(error) throw error;
        res.send({message:'插入成功',code:200,results:result});
      });
    }
  });
});

// 登录
app.post('/login',(req,res)=>{
  let phone=req.body.phone;
  let password=req.body.password;
  let sql='select phone,password from user where phone=? and password=?';
  pool.query(sql,[phone,password],(error,result)=>{
    // console.log(result);//返回的是一个数组
    if(error) throw error;
    if(result.length>0){
      res.send({message:"登录成功",code:200,results:result})
    }else{
      res.send({message:"登录失败",code:4,results:result})
    }
  })
})
