import Vue from 'vue'
import App from './App.vue'
import router from './router'
import Element from 'element-ui'
import 'bootstrap'
import 'jquery'
import 'popper.js'
import Axios from 'axios'
import 'element-ui/lib/theme-chalk/index.css'
import 'bootstrap/dist/css/bootstrap.min.css'
import Myheader from './components/header.vue'
import Myfooter from './components/footer.vue'

Vue.prototype.$ajax = Axios
Vue.use(Element)
Vue.config.productionTip = false
Vue.component("my-header",Myheader)
Vue.component("my-footer",Myfooter)

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
