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
      <el-menu mode="horizontal" :default-active="activeIndex" class="el-menu-demo">
          <!-- 显示出的字体 -->
          <div class="d-flex justify-content-around align-items-center aaa">
            <div>
              <el-menu-item index="1">
                <router-link class="text-dark" to="/">首页</router-link>
              </el-menu-item>
            </div>
            <div><el-menu-item>
              <router-link class="text-dark" :to="`/quanwu/1`">全屋订制</router-link>
            </el-menu-item></div>
            <div>
              <el-submenu index="2">
                <template slot="title">卫浴</template>
                <el-menu-item index="2-1">
                  <router-link :to="`/quanwu/2`">浴室柜</router-link>
                </el-menu-item>
                <el-menu-item index="2-2">
                  <router-link :to="`/quanwu/3`">马桶</router-link>
                </el-menu-item>
                <el-menu-item index="2-3">
                  <router-link :to="`/quanwu/4`">沐浴喷洒</router-link>
                </el-menu-item>
                <el-menu-item index="2-4">
                  <router-link :to="`/quanwu/5`">厨卫龙头</router-link>
                </el-menu-item>
                <el-menu-item index="2-5">
                  <router-link :to="`/quanwu/${fenlei6.id}`">厨卫水槽</router-link>
                </el-menu-item>
                <el-menu-item index="2-6">
                  <router-link :to="`/quanwu/${fenlei7.id}`">淋浴房</router-link>
                </el-menu-item>
                <el-menu-item index="2-7">
                  <router-link :to="`/quanwu/${fenlei8.id}`">浴缸</router-link>
                </el-menu-item>
                <el-menu-item index="2-8">
                  <router-link :to="`/quanwu/${fenlei9.id}`">浴室挂件</router-link>
                </el-menu-item>
                <el-menu-item index="2-9">
                  <router-link :to="`/quanwu/${fenlei10.id}`">五金配件</router-link>
                </el-menu-item>
              </el-submenu>
            </div>
            <div>
              <el-submenu index="3">
                <template slot="title">家具</template>
                <el-menu-item index="3-1">
                  <router-link :to="`/quanwu/${fenlei11.id}`">客厅</router-link>
                </el-menu-item>
                <el-menu-item index="3-2">
                  <router-link :to="`/quanwu/${fenlei12.id}`">餐厅</router-link>
                </el-menu-item>
                <el-menu-item index="3-2">
                  <router-link :to="`/quanwu/${fenlei13.id}`">卧室</router-link>
                </el-menu-item>
                <el-menu-item index="3-4">
                  <router-link :to="`/quanwu/${fenlei14.id}`">书房</router-link>
                </el-menu-item>
              </el-submenu>
            </div>
            <div>
              <el-submenu index="4">
                <template slot="title">家居饰品</template>
                <el-menu-item index="4-1">
                  <router-link :to="`/quanwu/${fenlei15.id}`">家纺</router-link>
                </el-menu-item>
                <el-menu-item index="4-2">
                  <router-link :to="`/quanwu/${fenlei16.id}`">柜架</router-link>
                </el-menu-item>
                <el-menu-item index="4-2">
                  <router-link :to="`/quanwu/${fenlei17.id}`">装饰</router-link>
                </el-menu-item>
                <el-menu-item index="4-4">
                  <router-link :to="`/quanwu/${fenlei18.id}`">归纳放置</router-link>
                </el-menu-item>
                <el-menu-item index="4-5">
                  <router-link :to="`/quanwu/${fenlei19.id}`">其它</router-link>
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
      fenlei1:{},
      fenlei2:{},
      fenlei3:{},
      fenlei4:{},
      fenlei5:{},
      fenlei6:{},
      fenlei7:{},
      fenlei8:{},
      fenlei9:{},
      fenlei10:{},
      fenlei11:{},
      fenlei12:{},
      fenlei13:{},
      fenlei14:{},
      fenlei15:{},
      fenlei16:{},
      fenlei17:{},
      fenlei18:{},
      fenlei19:{},
    }
  },
  mounted() {
    // console.log(this.$route.params.username)
    // 向数据库发送请求，获取分类的id
    this.axios.get('/classify').then(res=>{
      if(res.data.code==200){
        let [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s]=res.data.results;
        this.fenlei1=a;this.fenlei2=b;this.fenlei3=c;this.fenlei4=d;
        this.fenlei5=e;this.fenlei6=f;this.fenlei7=g;this.fenlei8=h;
        this.fenlei9=i;this.fenlei10=j;this.fenlei11=k;this.fenlei12=l;
        this.fenlei13=m;this.fenlei14=n;this.fenlei15=o;this.fenlei16=p;
        this.fenlei17=q;this.fenlei18=r;this.fenlei19=s;
      }
    })
  },
  methods: {
    // handleSelect(key, keyPath) {
    //     console.log(key, keyPath);
    //   }
  },
}
</script>