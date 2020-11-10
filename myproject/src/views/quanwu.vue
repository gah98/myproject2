<template>
  <div>
    <div class="bg">
      <img class="w-100" src="../../public/img/bg2.jpg" alt="">
    </div>
    <div class="container">
      <div class="mt-5">
      <ul class="row no-gutters list-unstyled d-flex-wrap justify-content-around">
        <li class="col-4 text-center" v-for="(item,index) of fenlei" :key="index">
          <router-link :to="`/details/${item.id}`">
            <img class="w-75" :src="item.img1" alt="">
          </router-link>
          <p>{{item.title}}</p>
          <p>￥{{item.price}}.00</p>
        </li>
      </ul>
      </div>
    </div>
  </div>
</template>
<style scoped>
</style>

<script>
export default {
  data() {
    ;
    return {
      fenlei:[],
      id:''
    }
  },
  mounted() {
    let id=this.$route.params.id;
    this.axios.get('/fenlei?id='+id).then(res=>{
        if(res.data.code==200){
          this.fenlei=res.data.results;
          // console.log(this.fenlei);
        }
      })
    // console.log(id);
  },
  methods: {
    getPath(){
      let id=this.$route.params.id;
      this.axios.get('/fenlei?id='+id).then(res=>{
        if(res.data.code==200){
          this.fenlei=res.data.results;
          // console.log(this.fenlei);
        }
      })
    }
  },
  watch:{
   '$route':'getPath'
  }
}
</script>