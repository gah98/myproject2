import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'
import router from '../router'
Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    // 表示页面是否登录
    isLogined:localStorage.getItem('isLogined') ||0,
    //存储用户的基础信息
    userInfo:JSON.parse(localStorage.getItem('userInfo'))||{},
  },
  //能改变state的数据
  mutations: {
    login_mutation(state,payload){
      // 修改用户的登录信息
      state.isLogined=1;
      // 修改用户的基础信息
      state.userInfo=payload;
    //   console.log(payload);
    },
    // 注销
    login_out(state){
      // 修改用户状态为0
      state.isLogined=0;
      state.userInfo={};
    }
  },
  actions: {
    // 登录
    login_actions(context,payload){
      console.log(payload);
      axios.post('/login',payload).then(res=>{
           if(res.data.code==200){
            // console.log(res.data.results);
            // 提交状态，修改用户的信息
            context.commit('login_mutation',res.data.results);
            // 将用户的登录状态保存到webstorage
            localStorage.setItem('isLogined',1);
            localStorage.setItem('userInfo',JSON.stringify(res.data.results))
            // MessageBox("登录成功");
            // 跳转
            router.push('/')
          }else{
            // MessageBox("登录失败");
            // 密码框清空
            this.password="";
          }
      })
      console.log('现在要发送请求')
    }
  },
  modules: {
  }
})
