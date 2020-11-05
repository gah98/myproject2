import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '../views/index.vue'
import Login from '../views/login.vue'
import Register from '../views/rigister.vue'

Vue.use(VueRouter)

const routes = [
  { path:'/',
    component:Index
  },
  {
    path:'/login',
    component:Login
  },
  {
    path:'/register',
    component:Register
  }
  
]

const router = new VueRouter({
  routes
})

export default router
