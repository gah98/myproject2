<template>
  <div id="app" class="container-fluid flex">
    <div class="d-flex justify-content-around align-items-center headerr bg-dark text-white">
      <div>
        <span>股票简称：松霖科技</span>
        <span>股票代码：666888</span>
      </div>
      <div>
        <router-link to="/login">登录</router-link>
        <router-link to="/register" class="pl-2">注册</router-link>
      </div>
    </div>
    <div class="text-center mt-2">
      <img src="../../public/img/icon/logo.png" alt="">
    </div>
    <!-- 导航栏 -->

    <div>
      <el-menu mode="horizontal" :default-active="activeIndex" class="el-menu-demo" @select="handleSelect">
          <!-- 显示出的字体 -->
          <div class="d-flex justify-content-around align-items-center aaa">
            <div>
              <el-menu-item>
                <router-link to="/">首页</router-link>
              </el-menu-item>
            </div>
            <div><el-menu-item>全屋订制</el-menu-item></div>
            <div>
              <el-submenu index="2">
                <template slot="title">卫浴</template>
                <el-menu-item index="2-1">浴室柜</el-menu-item>
                <el-menu-item index="2-2">马桶</el-menu-item>
                <el-menu-item index="2-3">沐浴喷洒</el-menu-item>
                <el-menu-item index="2-3">厨卫龙头</el-menu-item>
                <el-menu-item index="2-3">厨卫水槽</el-menu-item>
                <el-menu-item index="2-3">沐浴房</el-menu-item>
                <el-menu-item index="2-3">浴缸</el-menu-item>
                <el-menu-item index="2-3">浴室挂件</el-menu-item>
                <el-menu-item index="2-3">五金配件</el-menu-item>
              </el-submenu>
            </div>
            <div>
              <el-submenu index="3">
                <template slot="title">家具</template>
                <el-menu-item index="3-1">客厅</el-menu-item>
                <el-menu-item index="3-2">餐厅</el-menu-item>
                <el-menu-item index="3-2">卧室</el-menu-item>
                <el-menu-item index="3-4">书房</el-menu-item>
              </el-submenu>
            </div>
            <div>
              <el-submenu index="4">
                <template slot="title">家居饰品</template>
                <el-menu-item index="4-1">家纺</el-menu-item>
                <el-menu-item index="4-2">柜架</el-menu-item>
                <el-menu-item index="4-2">装饰</el-menu-item>
                <el-menu-item index="4-4">归纳放置</el-menu-item>
                <el-menu-item index="4-5">其它</el-menu-item>
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
    .head{
    margin: 0 auto;
  }
  .icon img{
    width: 35px;
  }
  .aaa:focus{
    outline: none;
    border: none;
  }
</style>

<script>
export default {
  data() {
    return {
      xianshi:'display:none',
      activeIndex:"1"
    }
  },
  methods: {
    handleSelect(key, keyPath) {
        console.log(key, keyPath);
      }
  },
}
</script>