<template>
<div>
  <div class="container-fluid d-flex justify-content-center align-items-center bg">
    <div id="login" class="d-flex flex-column justify-content-around align-items-center">
      <h3>账号注册</h3>
      <div class="w-50">
        <div class="row no-gutters align-items-center border">
          <img class="icon col-1" src="../../public/img/icon/phone.svg" alt="">
          <input v-model="phone" @blur="check_phone" class="col-11 border-0" type="text" placeholder="请输入手机号">
        </div>
        <div class="row no-gutters align-items-center border mt-3">
          <img class="icon col-1" src="../../public/img/icon/scok.svg" alt="">
          <input v-model="password" @blur="check_password" @focus="message" class="col-11 border-0" type="password" placeholder="请输入密码">
        </div>
        <div class="row no-gutters align-items-center border mt-3">
          <img class="icon col-1" src="../../public/img/icon/scok.svg" alt="">
          <input v-model="confirm_pass" @blur="check_confirm" class="col-11 border-0" type="password" placeholder="请再次输入密码">
        </div>
      </div>
      <!-- 手机号,密码不对时的提示 规则：密码为6-12位，可以有数字，字母  -->
      <div :style="msg" class="text-danger">
        <p>请输入正确的手机号</p>
      </div>
      <div :style="msg1" class="text-danger">
        <p>您输入的密码格式不对</p>
      </div>
      <div :style="msg2" class="text-danger">
        <p>两次密码输入不一致</p>
      </div>
      <div :style="msg3" class="text-danger">
        <p>密码格式为6-12位数字和字母的组合</p>
      </div>
      <button class="btn btn-primary w-50" @click="register">立即注册</button>
      <div>点击注册表示您同意并愿意遵守松霖协议</div>
    </div>
  </div>
</div>
  
</template>
<style scoped>
*{
  margin: 0;padding: 0;
}
.bg{
  height: 750px;
  background: url(../../public/img/bg.jpg);
  background-size:100%;
}
  #login{
    width: 600px;height: 450px;
    /* text-align: center; */
    background-color: #fff;
  }
  #login input{
    height: 45px;
  }
  #login input:focus{
    outline: none;
  }
  #login a{
    text-decoration: none;
  }
  .icon{
    width: 30px;
  }
  /* .btn{
    height: 45px;
  } */
  
</style>
<script>
export default {
  data(){
    return{
      phone:"",
      password:"",
      msg:"display:none",
      msg1:"display:none",
      msg2:"display:none",
      msg3:"display:none",
      confirm_pass:'',
    }
  },
  mounted(){
        
  },
  methods: {
    // 检测电话格式
    check_phone(){
      var reg=/^1[3-9]\d{9}$/;
      if(reg.test(this.phone)){
        this.msg="display:none";
        return true;
      }else{
        this.msg="display:block";
        return false;
      }
    },
    message(){
      this.msg3="display:block"
    },
    // 检测密码格式
    check_password(){
      let reg=/^[0-9a-zA-Z]{6,12}$/;
      if(reg.test(this.password)){
        this.msg1="display:none";
        return true;
      }else{
        this.msg="display:none";
        this.msg1="display:block";
        return this.else;
      }
    },
    // 检测重新密码对应
    check_confirm(){
      if(this.confirm_pass==this.password){
        return true;
      }else{
        this.msg1="display:none";
        this.msg2="display:block";
        return false;
      }
    },
    //点击注册
    register(){
      console.log(this.phone,this.password);
      if(this.check_phone() && this.check_password() && this.check_confirm()){
        this.axios.post('/register','phone='+this.phone+'&password='+this.password)
          .then((res)=>{
          console.log(res.data);
          if(res.data.code==200){
            this.$router.push('/');
            // this.username=this.phone;
            // this.update(this.username);
            // alert("注册成功");
          }else if(res.data.code==4){
            alert("电话已经被注册")
          }
        });
      }else{
        alert("输入的信息有误");
      }
    },

    // update(id){
    //   this.$router.push({
    //     path:'/header',
    //     params:{
    //       id:id
    //     }
    //   })
    // }
  }
  
}
</script>