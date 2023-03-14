import { createApp } from 'vue'
import App from './App.vue'
import './registerServiceWorker'
import router from './router'
import './main.css'
import { axios } from 'axios'
/* import the fontawesome core */
import { library } from '@fortawesome/fontawesome-svg-core'
/* import font awesome icon component */
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
/* il faut importer toutes les icones necessaires à l'application ici */
import { faUserAstronaut, faBars, faHouse,faPhotoFilm, faHeartCircleCheck, faFileCircleQuestion, faMagnifyingGlass } from '@fortawesome/free-solid-svg-icons'
import { faMessage} from '@fortawesome/free-regular-svg-icons'

/* add icons to the library */
library.add(faUserAstronaut, faMessage, faBars, faHouse, faPhotoFilm, faHeartCircleCheck, faFileCircleQuestion, faMagnifyingGlass)

createApp(App)
    .component('font-awesome-icon', FontAwesomeIcon, axios)
    .use(router)
    .mount('#app');
