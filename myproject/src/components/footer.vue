<template>
  <div id="footer" class="container-fluid bg-dark">
    <!-- 中部 -->
    <div class="d-flex row no-gutters py-5">
      <!-- 左边在线客服 -->
      <div class="text-light icon2 col-4 text-center">
        <h4>400-667-6665</h4>
        <p>7*24小时服务</p>
        <p>(仅收市话费)</p>
        <button class="btn btn-primary">在线客服</button>
        <p>投诉电话:0529-350222</p>
        <hr class="bg-light w-50">
        <p>关注我们</p>
        <a href="#">
          <img src="../../public/img/icon/微信.png" alt="">
        </a>
        <a class="ml-2" href="#">
          <img src="../../public/img/icon/微博.png" alt="">
        </a>
      </div>
      <!-- 中部帮助，服务，关于 -->
      <div class="row no-gutters justify-content-around border-left col-4">
        <ul>
          <li>帮助中心</li>
          <li><a href="#">购物指南</a></li>
          <li><a href="#">支付方式</a></li>
          <li><a href="#">配送方式</a></li>
          <li><a href="#">安装服务</a></li>
        </ul>
        <ul>
          <li>服务支持</li>
          <li><a href="#">售后政策</a></li>
          <li><a href="#">自助服务</a></li>
          <li><a href="#">服务网点</a></li>
        </ul>
        <ul>
          <li>关于我们</li>
          <li><a href="#">了解松霖</a></li>
        </ul>
      </div>
      <!-- 右边扫码 -->
      <div class="col-4 text-center border-left">
        <h4 class="text-white">扫码下载松霖APP</h4>
        <img class="w-25 mt-5" src="../../public/img/code-bottom.png" alt="">
      </div>
    </div>
    <p class="text-center text-muted mb-3">
      松霖家居有限公司 ©2020-2020 All rights reserved
    </p>
  </div>
</template>
<style scoped>
  /* #footer{
  height: 400px;
} */
.icon2 img{
  width: 30px;
  background-color: #fff;
}
ul{
  text-align: center;
  list-style: none;
  color: #fff;
}
ul>li:nth-child(2){
  margin-top: 10px;
}
ul>li{
  margin-top: 5px;
}
ul a{
  color: #fff;
  text-decoration: none;
  font-size: 12px;
}
</style>