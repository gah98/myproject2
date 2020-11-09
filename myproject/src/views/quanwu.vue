<template>
  <div>
    <div class="bg">
      <img src="../../public/img/bg2.jpg" alt="">
    </div>
    <div class="mt-5">
      <ul class="list-unstyled d-flex justify-content-around a">
        <li v-for="(item,index) of fenlei" :key="index">
          <router-link to="">橱柜</router-link>
        </li>
      </ul>
    </div>
    <div class="text-center">
      <h3>分类</h3>
      <ul class="row list-unstyled">
        <li class="col-3">
          <router-link to=""></router-link>
        </li>
        <p>标题</p>
        <p>价格</p>
      </ul>
    </div>
  </div>
</template>
<style scoped>
.a>li>a{
  text-decoration: none;
  color: #000;
}
</style>

<script>
export default {
  data() {
    return {
      fenlei:[]
    }
  },
  mounted() {
    this.axios.get('/fenlei').then(res=>{
      this.fenlei=res.data.result;
    })
  },
}
</script>