import { createRouter, createWebHashHistory } from 'vue-router';

const routes = [
  {
    path: '/',
    name: 'Profil',
    component: () => import('../views/ViewProfil.vue')
  },
  {
    path: '/ressources',
    name: 'ressources',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import('../views/WallView.vue')
  },
  {
    path: '/favoris',
    name: 'favoris',
    component: () => import('../views/ViewFavorite.vue')
  },
  {
    path: '/apropos',
    name: 'aPropos',
    component: () => import('../views/AboutView.vue')
  }
  
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})

export default router