<template>
<div>
  <div class="container-fluid p-0">
    <!-- 轮播图 -->
    <el-carousel class="w-100" indicator-position="outside" height="560px">
      <el-carousel-item class="w-100" v-for="(val,item) of backgroundImg" :key="item">
        <a href=""><img class="w-100" :src="val.src" alt=""></a>
      </el-carousel-item>
    </el-carousel>
    <!-- 新品发布 -->
    <div class="text-center">
      <h3>新品发布</h3>
      <span>原创的高端整屋家居</span>
      <div class="row">
        <!-- 后期换为从数据库拿到的数据 -->
        <div class="col-3" v-for="(tu,i) of tus" :key="i">
          <!-- 图片 -->
          <router-link to="">
            <img class="w-75" :src="tu.src" alt="">
            <!-- <img class="w-75" :src=tu.src alt=""> -->
          </router-link>
          <!-- 名称 -->
          <p>沙发</p>
          <p>￥666.00</p>
        </div>
      </div>
    </div>
    <!-- 产品推荐 -->
    <div class="index_tuijian">
      <img src="../../public/img/index_bg1.png" alt="">
      <h3 class="text">产品推荐</h3>
    </div>
    <!-- 橱柜 -->
    <div v-for="(value,i) of index" :key="i" class="w-75 pt-5 chugui">
      <h4>松霖橱柜 KITCHEN</h4>
      <!-- 第一排 -->
      <div>
        <ul class="list-unstyled row no-gutters">
          <li class="col-5">
            <img class="w-75" src="../../public/img/index_chugui1.jpg" alt="">
            <p>新现代</p>
            <span></span>
          </li>
          <li class="col-7">
            <img class="w-100" src="../../public/img/index_chugui2.jpg" alt="">
          </li>
        </ul>
      </div>
      <!-- 第二排 -->
      <div>
        <ul class="list-unstyled row no-gutters">
          <li class="col-4">
            <!-- 后面绑定 -->
            <img src="" alt="">
          </li>
          <li class="col-4">
            <img src="" alt="">
          </li>
          <li class="col-4">
            <img src="" alt="">
          </li>
        </ul>
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
    widows: 100%;
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
      tus:[
        {src:require("../../public/img/index_sofa.png")},
        {src:require("../../public/img/index_sofa2.png")},
        {src:require("../../public/img/index_maojin.png")},
        {src:require("../../public/img/index_linyu.png")},
        {src:require("../../public/img/index_tape1.png")},
        {src:require("../../public/img/index_tape2.png")}
        ],
    }
  },
}
</script>