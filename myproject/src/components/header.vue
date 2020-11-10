<template>
  <div id="app" class="container-fluid flex">
    <div class="d-flex justify-content-around align-items-center headerr bg-dark text-white">
      <div>
        <span>股票简称：松霖科技</span>
        <span>股票代码：666888</span>
      </div>
      <div class="d-flex" v-if="this.$store.state.isLogined==1">
        <p class="text-danger">你好，{{this.$store.state.userInfo.phone}}</p>
        <button @click="logout">注销</button>
      </div>
      <div v-else>
        <router-link to="/login" class="text-white">登录</router-link>
        <router-link to="/register" class="pl-2 text-white">注册</router-link>
      </div>
    </div>
    <div class="text-center mt-2">
      <img src="../../public/img/icon/logo.png" alt="">
    </div>
    <!-- 导航栏 -->

    <div id="nav">
      <el-menu mode="horizontal" :default-active="activeIndex" class="el-menu-demo" @select="handleSelect">
          <!-- 显示出的字体 -->
          <div class="d-flex justify-content-around align-items-center aaa">
            <div>
              <el-menu-item index="">
                <router-link class="text-dark" to="/">首页</router-link>
              </el-menu-item>
            </div>
            <div>
              <el-menu-item index="1">
              <router-link class="text-dark" :to="`/quanwu/1`">全屋订制</router-link>
              </el-menu-item></div>
            <div>
              <el-submenu index="20">
                <template slot="title">卫浴</template>
                <el-menu-item index="2">
                  <router-link class="el" :to="`/quanwu/2`">浴室柜</router-link>
                </el-menu-item>
                <el-menu-item index="3">
                  <router-link :to="`/quanwu/3`">马桶</router-link>
                </el-menu-item>
                <el-menu-item index="4">
                  <router-link :to="`/quanwu/4`">沐浴喷洒</router-link>
                </el-menu-item>
                <el-menu-item index="5">
                  <router-link :to="`/quanwu/5`">厨卫龙头</router-link>
                </el-menu-item>
                <el-menu-item index="6">
                  <router-link :to="`/quanwu/6`">厨卫水槽</router-link>
                </el-menu-item>
                <el-menu-item index="7">
                  <router-link :to="`/quanwu/7`">淋浴房</router-link>
                </el-menu-item>
                <el-menu-item index="8">
                  <router-link :to="`/quanwu/8`">浴缸</router-link>
                </el-menu-item>
                <el-menu-item index="9">
                  <router-link :to="`/quanwu/9`">浴室挂件</router-link>
                </el-menu-item>
                <el-menu-item index="10">
                  <router-link :to="`/quanwu/10`">五金配件</router-link>
                </el-menu-item>
              </el-submenu>
            </div>
            <div>
              <el-submenu index="21">
                <template slot="title">家具</template>
                <el-menu-item index="11">
                  <router-link :to="`/quanwu/11`">客厅</router-link>
                </el-menu-item>
                <el-menu-item index="12">
                  <router-link :to="`/quanwu/12`">餐厅</router-link>
                </el-menu-item>
                <el-menu-item index="13">
                  <router-link :to="`/quanwu/13`">卧室</router-link>
                </el-menu-item>
                <el-menu-item index="14">
                  <router-link :to="`/quanwu/14`">书房</router-link>
                </el-menu-item>
              </el-submenu>
            </div>
            <div>
              <el-submenu index="22">
                <template slot="title">家居饰品</template>
                <el-menu-item index="15">
                  <router-link :to="`/quanwu/15`">家纺</router-link>
                </el-menu-item>
                <el-menu-item index="16">
                  <router-link :to="`/quanwu/16`">柜架</router-link>
                </el-menu-item>
                <el-menu-item index="17">
                  <router-link :to="`/quanwu/17`">装饰</router-link>
                </el-menu-item>
                <el-menu-item index="18">
                  <router-link :to="`/quanwu/18`">归纳放置</router-link>
                </el-menu-item>
                <el-menu-item index="19">
                  <router-link :to="`/quanwu/$19`">其它</router-link>
                </el-menu-item>
              </el-submenu>
            </div>
            <div>
              <el-menu-item>关于松霖</el-menu-item>
            </div>
            <div class="col-4 icon">
              <input type="text" name="" id="">
              <a href="#">
                <img src="../../public/img/icon/搜索 search.png" alt="">
              </a>
              <a href="#">
                <img src="../../public/img/icon/购物车.png" alt="">
              </a>
            </div>
          </div>
      </el-menu>
    </div>
  </div>
</template>
<style scoped>
*{
  margin: 0;padding: 0;
}
.headerr{
  height: 40px;
}
#nav a,.el,a{
  color: #000;
  text-decoration: none;
}
    .head{
    margin: 0 auto;
  }
  .icon img{
    width: 35px;
  }
  .aaa:focus{
    outline: none;
    border: none;
    font-size: 24px;
  }
</style>

<script>
export default {
  data() {
    return {
      xianshi:'display:none',
      activeIndex:"1",
      id:'',
    }
  },
  mounted() {
    // console.log(this.$route.params.username)
    // 向数据库发送请求，获取分类的id
    this.axios.get('/classify').then(res=>{
  
    })
  },
  methods: {
    handleSelect(key, keyPath) {
      // console.log(key);
      // if(key==0){
      //    this.$router.push('/');
      // }else if(key==1){
      //   this.$router.push('quanwu/1');
      // }else if(key==2){
      //   this.$router.push('quanwu/2');
      // }
      },
      logout(){
        this.$store.commit('login_out');
        localStorage.clear();
      }
  },
  watch: {
  
  },
}
</script>