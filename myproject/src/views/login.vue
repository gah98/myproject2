<template>
  <div class="container-fluid d-flex justify-content-center align-items-center bg">
    <div id="login" class="d-flex flex-column justify-content-around align-items-center">
      <h3>账号登录</h3>
      <div class="w-50">
        <div class="row no-gutters align-items-center border">
          <img class="icon col-1" src="../../public/img/icon/phone.svg" alt="">
          <input v-model="phone" @blur="tishi" class="col-11 border-0" type="text" placeholder="请输入手机号">
        </div>
        <div class="row no-gutters mt-5 align-items-center border">
           <img class="icon col-1" src="../../public/img/icon/scok.svg" alt="">
          <input v-model="password" @blur="tishi" class="col-11 border-0" type="password" placeholder="请输入密码">
        </div>
      </div>
      <!-- 手机号,密码不对时的提示 规则：密码为6-12位，可以有数字，字母  -->
      <div :style="msg" class="text-danger">
        <p>请输入正确的手机号</p>
      </div>
      <div :style="msg1" class="text-danger">
        <p>您输入的密码不正确</p>
      </div>
      <button @click="login" class="btn btn-primary w-50">立即登录</button>
      <div class="d-flex justify-content-between w-50">
        <a class="" href="#">忘记密码</a>
        <a href="#">使用短信验证登录</a>
      </div>
      <p class="">使用其他方式登录</p>
      <div class="w-100 d-flex justify-content-md-around">
        <a href="#" class="text-muted">
          <img src="../../public/img/icon/weichat.png" alt="">
          <span>微信</span>
        </a>
        <a href="#" class="text-muted">
          <img src="../../public/img/icon/qq.png" alt="">
          <span>QQ</span>
        </a>
        <router-link to="./register" class="text-muted">手机注册</router-link>
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
  background-image: url(../../public/img/bg.jpg);
  background-size: 100%;
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
  
</style>
<script>
export default {
  data(){
    return{
      phone:"",
      password:"",
      msg:"display:none",
      msg1:"display:none"
    }
  },
  // mounted(){
  //       this.login();
  // },
  methods: {
    tishi(){
      var reg=/^1[3-9]\d{9}$/;
      var reg1=/^[a-zA-z0-9]{6,12}$/
      if(reg.test(this.phone)){
        this.msg="display:none";
        if(reg1.test(this.PASSWORD)){
          this.msg1="display:none"
        }else{
          this.msg1="display:block"
        }
      }else{
        this.msg="display:block"
      }
    },

    // 点击登录
    login(){
      let object={
        phone:this.phone,
        password:this.password
      }
      let str=this.qs.stringify(object)
      this.$store.dispatch('login_actions',str);
      // this.axios.post('/login',this.qs.stringify(object)).then(res=>{
      //   if(res.data.code==200){
      //     alert("登录成功");
      //   }else{
      //     alert("登录失败:账号或密码错误");
      //   }
      // })
    }
  }
  
}
</script>