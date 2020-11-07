<template>
  <div>
    <div class="bg">
      <img src="../../public/img/bg2.jpg" alt="">
    </div>
    <div class="mt-5">
      <ul class="list-unstyled d-flex justify-content-around a">
        <li>
          <router-link to="">橱柜</router-link>
        </li>
        <li>
          <router-link to="">衣柜</router-link>
        </li>
        <li>
          <router-link to="">榻榻米</router-link>
        </li>
        <li>
          <router-link to="">儿童房</router-link>
        </li>
        <li>
          <router-link to="">电视墙</router-link>
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
      quanwu:[]
    }
  },
  mounted() {
    this.axios.get('/quanwu').then(res=>{
      this.quanwu=res.data.result;
    })
  },
}
</script>