<template>
  <div>
    <!-- 搜索的内容 -->
    <div class="d-flex row">
      <div class="w-50 col-3" v-for="(item,i) of content" :key="i">
          <!-- 图片 -->
          <router-link :to="`/details/${item.id}`">
            <img class="w-75" :src="item.img1" alt="">
            <!-- <img class="w-75" :src=tu.src alt=""> -->
          </router-link>
          <!-- 名称 -->
          <p>{{item.title}}</p>
          <span>￥{{item.price}}</span>
        </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      content:[]
    }
  },
  mounted() {
    let title=this.$route.params.id;
    // this.$router.push('`/search/${title}`')
      this.axios.get('/search?title='+title).then(res=>{
        if(res.data.code==200){
          this.content=res.data.results;
        }else{
          alert("没有找到商品");
        }
        
        // console.log(content);
        // let id=content.id;
    
      })
    console.log(title);
  },
  methods: {
    getPath(){
      let title=this.$route.params.id;
      console.log(title);
       this.$router.push('`/search/${title}`')
      this.axios.get('/search?title='+title).then(res=>{
        this.content=res.data.results;
        // console.log(content);
        // let id=content.id;
    
      })
    }
  },
  watch:{
   '$route':'getPath'
  }
}
</script>