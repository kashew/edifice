import { createApp } from 'vue'
import App from './App.vue'
import './registerServiceWorker'
import router from './router'
import store from './store'
import { OktaAuth } from '@okta/okta-auth-js'
import OktaVue from '@okta/okta-vue'

import './assets/css/main.css'

const oktaAuth = new OktaAuth({
  clientId: '0oaopzuo7JkajKgtb5d6',
  issuer: 'https://login.taxchum.com',
  redirectUri: 'http://localhost:8080/login/callback',
  scopes: ['openid', 'profile', 'email'],
  pkce: true
})

createApp(App)
  .use(store)
  .use(router)
  .use(OktaVue, { oktaAuth })
  .mount('#app')
