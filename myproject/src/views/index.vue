<template>
<div>
  <div class="container-fluid">
    <!-- 轮播图 -->
    <el-carousel class="w-100" indicator-position="outside" height="560px">
      <el-carousel-item class="w-100" v-for="(val,item) of backgroundImg" :key="item">
        <router-link to="" href=""><img class="w-100" :src="val.src" alt=""></router-link>
      </el-carousel-item>
    </el-carousel>
    <!-- 新品发布 -->
    <div class="text-center">
      <h3>新品发布</h3>
      <span>原创的高端整屋家居</span>
      <div class="row no-gutters">
        <!-- 后期换为从数据库拿到的数据 -->
        <div class="col-3" v-for="(tu,i) of tus.slice(0,6)" :key="i">
          <!-- 图片 -->
          <router-link :to="`/details/${tu.id+35}`">
            <img class="w-75" :src="tu.image" alt="">
            <!-- <img class="w-75" :src=tu.src alt=""> -->
          </router-link>
          <!-- 名称 -->
          <p>{{tu.title}}</p>
          <span>￥{{tu.price}}</span>
        </div>
      </div>
    </div>
    <!-- 产品推荐 -->
    <div class="index_tuijian">
      <img class="w-100" src="../../public/img/index_bg1.png" alt="">
      <h3 class="text">产品推荐</h3>
    </div>
    <!-- 橱柜 -->
    <div class="w-75 pt-5 chugui">
      <h4 class="text-left">松霖橱柜 KITCHEN</h4>
      <!-- 第一排 -->
      <div class="mt-3">
        <ul class="list-unstyled row no-gutters">
          <li class="col-3">
            <router-link :to="`/details/${item1.id+35}`">
              <img class="w-100" :src="item1.image" alt="">
            </router-link>
            <p>{{item1.title}}</p>
            <span>￥{{item1.price}}</span>
          </li>
          <li class="col-9 text-center">
            <router-link :to="`/details/${item2.id+35}`">
              <img class="w-75" :src="item2.image" alt="">
            </router-link>
            <p>{{item2.title}}</p>
            <span>￥{{item2.price}}</span>
          </li>
        </ul>
      </div>
      <!-- 第二排 -->
      <div>
        <ul class="row no-gutters">
          <li class="col-4" v-for="(item,i) of tus.slice(8,11)" :key="i">
            <router-link :to="`/details/${item.id+35}`">
              <img class="w-75" :src="item.image" alt="">
            </router-link>
            <p>{{item.title}}</p>
            <span>￥{{item.price}}</span>
          </li>
        </ul>
      </div>
      <div class="more">
        <router-link to="/">查看更多</router-link>
      </div>
    </div>
    <!-- 松霖卫浴 -->
    <div class="w-75 pt-5 chugui">
      <h4 class="text-left">松霖卫浴 KITCHEN</h4>
      <!-- 第一排 -->
      <div class="mt-3">
        <ul class="list-unstyled row no-gutters">
          <li class="col-3">
            <router-link :to="`/details/26`">
              <img class="w-100" :src="item3.image" alt="">
            </router-link>
            <p>{{item3.title}}</p>
            <span>￥{{item3.price}}</span>
          </li>
          <li class="col-9 text-center">
            <router-link :to="`/details/27`">
              <img class="w-75" :src="item4.image" alt="">
            </router-link>
            <p>{{item4.title}}</p>
            <span>￥{{item4.price}}</span>
          </li>
        </ul>
      </div>
      <!-- 第二排 -->
      <div>
        <ul class="list-unstyled row no-gutters">
          <li class="col-4" v-for="(item,i) of tus.slice(13,16)" :key="i">
            <router-link :to="`/details/${item.id+33}`">
              <img class="w-75" :src="item.image" alt="">
            </router-link>
            <p>{{item.title}}</p>
            <span>￥{{item.price}}</span>
          </li>
        </ul>
      </div>
      <div class="more">
        <router-link to="/">查看更多</router-link>
      </div>
    </div>
    <!-- 松霖家居 -->
    <div class="w-75 pt-5 chugui">
      <h4 class="text-left">松霖家居 KITCHEN</h4>
      <!-- 第一排 -->
      <div class="mt-3">
        <ul class="list-unstyled row no-gutters">
          <li class="col-7">
            <router-link :to="`/details/9`">
              <img class="w-100" :src="item5.image" alt="">
            </router-link>
            <p>{{item5.title}}</p>
            <span>￥{{item5.price}}</span>
          </li>
          <li class="col-5 text-center">
            <router-link :to="`/details/50`">
              <img class="w-100" :src="item6.image" alt="">
            </router-link>
            <p>{{item6.title}}</p>
            <span>￥{{item6.price}}</span>
          </li>
        </ul>
      </div>
      <!-- 第二排 -->
      <div>
        <ul class="list-unstyled row no-gutters">
          <li class="col-4" v-for="(item,i) of tus.slice(18,21)" :key="i">
            <router-link :to="`/details/${item.id+32}`">
              <img class="w-75" :src="item.image" alt="">
            </router-link>
            <p>{{item.title}}</p>
            <span>￥{{item.price}}</span>
          </li>
        </ul>
      </div>
      <div class="more">
        <router-link to="/">查看更多</router-link>
      </div>
    </div>
    <!-- 家居饰品 -->
    <div class="w-75 pt-5 chugui">
      <h4 class="text-left">家居饰品 KITCHEN</h4>
      <!-- 第一排 -->
      <div class="mt-3">
        <ul class="list-unstyled row no-gutters">
          <li class="col-7">
            <router-link :to="`/details/54`">
              <img class="w-100" :src="item7.image" alt="">
            </router-link>
            <p>{{item7.title}}</p>
            <span>￥{{item7.price}}</span>
          </li>
          <li class="col-5 text-center">
            <router-link :to="`/details/55`">
              <img class="w-100" :src="item8.image" alt="">
            </router-link>
            <p>{{item8.title}}</p>
            <span>￥{{item8.price}}</span>
          </li>
        </ul>
      </div>
      <!-- 第二排 -->
      <div>
        <ul class="list-unstyled row no-gutters">
          <li class="col-4" v-for="(item,i) of tus.slice(23,26)" :key="i">
            <router-link :to="`/details/${item.id+32}`">
              <img class="w-75" :src="item.image" alt="">
            </router-link>
            <p>{{item.title}}</p>
            <span>￥{{item.price}}</span>
          </li>
        </ul>
      </div>
      <div class="more">
        <router-link to="/">查看更多</router-link>
      </div>
    </div>
  </div>
</div>
</template>
<style scoped>
  .el-carousel__item a {
    color: #475669;
    font-size: 18px;
    opacity: 0.75;
    line-height: 560px;
    margin: 0;
  }
  .index_tuijian{
    width: 100%;
    position: relative;
  }
  .text{
    position: absolute;
    top: 50%;
    left: 46%;
    color: #000;
  }
  .chugui{
    margin: 0 auto;
    text-align: center;
  }
  .more{
    width: 120px;height: 50px;
    border: 2px solid #000;
    text-align: center;
    line-height: 50px;
    margin: 0 auto;
  }
  .more>a{
    text-decoration: none;
  }
  
</style>
<script>
export default {
  data() {
    return {
      backgroundImg:[
        {src: require("../../public/img/swiper1.jpg")},
        {src: require("../../public/img/swiper2.jpg")},
        {src: require("../../public/img/swiper3.jpg")},
        {src: require("../../public/img/swiper4.jpg")},
        ],
      tus:[],
      item1:{},
      item2:{},
      item3:{},
      item4:{},
      item5:{},
      item6:{},
      item7:{},
      item8:{},

    }
  },
  mounted() {
    this.axios.get('/index_laptop').then(res=>{
      this.tus=res.data.results;
      // console.log(this.tus);
      this.item1=this.tus[6];
      this.item2=this.tus[7];
      this.item3=this.tus[11];
      this.item4=this.tus[12];
      this.item5=this.tus[16];
      this.item6=this.tus[17];
      this.item7=this.tus[21];
      this.item8=this.tus[22];
    });
  },
}
</script>