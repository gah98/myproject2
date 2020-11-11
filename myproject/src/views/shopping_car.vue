<template>
  <div>
    <div class="text-center">
      <h2>我的购物车</h2>
    </div>
    <!-- <div v-if="count==0">
      <h4>购物车为空</h4>
    </div> -->
    <div class="row justify-content-around align-items-center">
      <!-- 图片 -->
      <div class="col-3">
        <img class="w-75" :src="this.$store.state.shopping_car.img" alt="">
      </div>
      <!-- 名字，规格 -->
      <div class="col-3">
        <p>{{this.$store.state.shopping_car.title}}</p>
        <p>￥{{this.$store.state.shopping_car.price}}</p>
      </div>
      <!-- 加减按钮 -->
      <div class="col-3 shopping_car text-center">
        <button  @click="minus">-</button>
        <input class="text-center" v-model="this.$store.state.shopping_car.count" type="text">
        <button @click="add">+</button>
      </div>
      <div class="col-3">
        <span>总价:￥{{this.$store.state.shopping_car.sum}}</span>
      </div>
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
</style>
<script>
export default {
  data() {
    return {
      
    }
  },
  mounted() {
    // this.img=this.$route.params.img;
    // this.title=this.$route.params.title;
    // this.price=this.$route.params.price;
    // if(this.$route.params.count==undefined){
    //   this.count=0
    // }else{
    //   this.count=this.$route.params.count;
    // }
    // console.log(this.count);
    // this.sum=this.price*this.count;
  },
   methods: {
    minus(){
      if(this.$store.state.shopping_car.count>1){
        this.$store.state.shopping_car.count--;
        // this.sum-=this.price;
      }
    },
    // 加法
    add(){
      this.$store.state.shopping_car.count++;
      // this.sum+=this.price;
    },
    // 加入购物车
  },
}
</script>