const express=require('express');
const mysql=require('mysql');
const cors=require('cors');
const app=express();
app.listen(3000);
const pool=mysql.createPool({
  host:'127.0.0.1',
  port:'3306',
  user:'root',
  password:'',
  database:'songlin',
  charset:'utf8',
  connectionLimit:20
});

app.use(cors({
  origin:['http://localhost:8080','http://127.0.0.1:8080']
}));
app.post('/login',(req,res)=>{
  let phone=req.query.phone;
  let password=req.query.password;
  let sql='INSERT INTO user VALUES=?';
  pool.query(sql,[phone,password],(error,result)=>{
    if(error) throw error;
    res.send({message:'插入成功',code:200,results:result})
  })
})
