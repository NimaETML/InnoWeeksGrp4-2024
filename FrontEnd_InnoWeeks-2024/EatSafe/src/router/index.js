import { createRouter, createWebHistory } from 'vue-router'
import AllergyCheckView from '../views/AllergyCheckView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: AllergyCheckView // pas lazy-loading car cette page va toujours s'afficher
    },
    {
      path: '/about',
      name: 'about',
      component: () => import('../views/AboutView.vue')
    },
    {
      path: '/register-restaurant',
      name: 'register-restaurant',
      component: () => import('../views/RegisterRestaurantView.vue')
    }
  ]
})

export default router
