<template>
  <section class="mx-auto my-3 overflow-hidden w-full bg-white border border-gray-200 rounded-lg" v-for="ressource in ressources" :key="ressource.id">

    <!-- Infos de publication -->
    <div class="p-3 border-gray-200 rounded bg-gray-50">
      <div class="container flex flex-wrap items-center justify-between mx-auto">
        <a href="#" class="flex items-center">
            <img src="https://www.babelio.com/users/AVT_Jean-Francois-Braunstein_9346.jpg" class="h-10 mr-3 rounded-full" alt="Flowbite Logo" />
            <div class="leading-3">
              <span class="text-xs font-semibold whitespace-nowrap text-gray-800">Jean-François Lamour</span>
              <br>
              <span class="text-xs whitespace-nowrap text-gray-500">le 12 mai 2023</span>
            </div>
        </a>
        <div
          id="navbar-solid-bg"
          class="w-auto rounded-lg"
        >
          <button
            href=""
            class="block px-3 rounded h-full"
          >
            <!-- <font-awesome-icon icon="fa-solid fa-ellipsis" /> -->
            ...
          </button>
        </div>
      </div>
    </div>

    <!-- Image de couverture -->
    <!-- <img class="w-full" src={{ ressource.imageBanner }} alt="" /> -->

    <!-- Contenu -->
    <div class="p-5">
      <!-- affichage des ressources -->
      <div>
        <h3 class="mb-2 text-2xl font-medium tracking-tight text-gray-900">
          {{ ressource.nom }}
        </h3>
        <p class="mb-3 text-xs text-gray-800">
          {{ ressource.content }}
        </p>
      </div>

      <!-- ANCIEN CODE si dessous -->

<!--        <a href="#">-->
<!--            <h3 class="mb-2 text-2xl font-medium tracking-tight text-gray-900">-->
<!--              {{ nom }}-->
<!--            </h3>-->
<!--        </a>-->
<!--        <p class="mb-3 text-xs text-gray-800">-->
<!--          {{ content }}-->
<!--        </p>-->



        <!-- <div class="text-right">
          <a href="#" class="inline-flex items-center px-3 py-2 text-sm font-medium text-right text-white bg-gray-700 rounded-lg hover:bg-gray-800 focus:ring-4 focus:outline-none focus:ring-gray-300">
              Lire plus -->
      <!-- <svg aria-hidden="true" class="w-4 h-4 ml-2 -mr-1" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg> -->
      <!-- </a>
        </div> -->
    </div>
    <!-- Options de footer -->
  </section>
</template>

<script>
import axios from 'axios';
import env from "../config/env.js";

export default {
  name: "DisplayResource",
  data: () => {
    return {
      headers: [
        { text: 'Nom', value: 'nom' },
        { text: 'Contenu', value: 'content' },
        { text: 'Baniere', value: 'imageBanner' },
      ],
      ressources: [],
    }
  },
  created() {
    env.promise.then(() => {
      this.fetchData();
    });
  },
  methods: {
    async fetchData() {
      const config = {
        headers:{
          'Access-Control-Allow-Origin': '*'
        }
      };
      try {
        const response = await axios.get(`${env.baseUrl}/api/ressources`, config);
        this.ressources = response.data;
      } catch (error) {
        console.log(error);
      }
    }
  }
}
</script>

<style scoped>

</style>