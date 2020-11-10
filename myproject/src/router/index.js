import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '../views/index.vue'
import Login from '../views/login.vue'
import Register from '../views/rigister.vue'
import Details from '../views/details.vue'
import Quanwu from '../views/quanwu.vue'
import Header from '../components/header.vue'
Vue.use(VueRouter)

const routes = [
  { path:'/',
    component:Index
  },
  {
    path:'/header',
    component:Header
  },
  {
    path:'/login',
    component:Login
  },
  {
    path:'/register',
    component:Register
  },
  {
    path:'/details/:id',
    component:Details
  },
  {
    path:'/quanwu/:id',
    component:Quanwu
  }
  
]

const router = new VueRouter({
  routes
})

export default router
