import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import { authGuard } from '../auth/authGuard';

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'home',
    component: Home
  },
  {
    path: '/about',
    name: 'about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  },
  {
    path: '/profile',
    name: 'profile',
    component: () => import('../views/Profile.vue'),
    beforeEnter: authGuard
  },
  {
    path: '/receipts',
    name: 'receipts',
    component: () => import('../views/Receipts.vue')
  }
]

const router = new VueRouter({
  mode: "history",
  base: process.env.VUE_APP_SUB_PATH,
  routes
})

export default router
