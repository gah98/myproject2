<template>
  <div class="container">
    <!-- 上方 -->
    <div class="row no-gutters mt-5">
      <!-- 左侧图片 -->
      <div class="col-7">
        <img class="w-100" :src="detail.img2" alt="">
      </div>
      <!-- 右侧详情 -->
      <div class="col-5 text-center">
        <p class="h3 text-dark">{{detail.title}}</p>
        <p class="h5 text-danger mt-5">￥{{detail.price}}</p>
        <div class="text-center mt-5">
          <span class="text-white bg-secondary w-100">16:00后付款，次日发货-备注:{{detail.promise}}</span>
        </div>
        <!-- 购物车 -->
        <div class="shopping_car mt-5">
          <button>-</button>
          <input class="w-25 text-center" type="text" name="" value="1">
          <button>+</button>
          <div class="mt-5"><button class="btn btn-primary">加入购物车</button></div>
        </div>
      </div>
    </div>
    <div class="fen"></div>
    <div class="spec m-3">
      <img :src="detail.img3" alt="">
      <img :src="detail.img4" alt="">
      <img :src="detail.img5" alt="">
    </div>
  </div>
</template>
<style scoped>
  .shopping_car button:nth-child(1){
   border-left: 1px solid #000;
  }
  .shopping_car>button:nth-child(3){
   border-right: 1px solid #000;
  }
  .shopping_car button,input{
    width: 50px;
    height: 50px;
    outline: none;
    border: none;
    border-top: 1px solid #000;
    border-bottom: 1px solid #000;
  }
  .shopping_car>div>button{
    width: 215px;
  }
  .spec img{
    width: 80%;
  }
  .fen{
    height: 10px;
    margin-top: 10px;
    background-color: aquamarine;
  }
</style>
<script>
export default {
  data() {
    return {
      detail:{}
    }
  },
  mounted() {
    let id=this.$route.params.id;
    console.log("传过来的参数是"+id);
    this.axios.get('/details?id='+id).then(res=>{
      if(res.data.code==200){
        this.detail=res.data.results;
        console.log(this.detail);
      }
    });
    // console.log(id);
  },
}
</script>