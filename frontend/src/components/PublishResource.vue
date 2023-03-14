<template>
  <section class="m-auto overflow-hidden w-full bg-white border border-gray-200 rounded-lg">
    <form class="p-5" @submit.prevent="publishResource">
      <h3 class="mb-2 text-2xl font-bold tracking-tight text-gray-900">
        Publier une ressource
      </h3>

      <div class="mb-2">
        <label for="nom" class="text-gray-700">Nom</label>
        <input
            id="nom"
            type="text"
            name="nom"
            class="rounded-lg flex-1 appearance-none border border-gray-300 w-full py-2 px-4 bg-white text-gray-700 placeholder-gray-400 text-base focus:outline-none focus:ring-2 focus:ring-green-600 focus:border-transparent"
            v-model="nom"
            placeholder="Le titre de votre ressource"
            required
        >
      </div>

      <div class="mb-2">
        <label for="categorie" class="text-gray-700">Catégorie</label>
        <input
            id="categorie"
            type="text"
            name="categorie"
            class="rounded-lg flex-1 appearance-none border border-gray-300 w-full py-2 px-4 bg-white text-gray-700 placeholder-gray-400 text-base focus:outline-none focus:ring-2 focus:ring-green-600 focus:border-transparent"
            v-model="categorie"
            placeholder="1, 2, 3 ..."
            required
        >
      </div>

      <div class="mb-2">
        <label for="type_ressources" class="text-gray-700">Type de ressource</label>
        <input
            id="type_ressources"
            type="text"
            name="type_ressources"
            class="rounded-lg flex-1 appearance-none border border-gray-300 w-full py-2 px-4 bg-white text-gray-700 placeholder-gray-400 text-base focus:outline-none focus:ring-2 focus:ring-green-600 focus:border-transparent"
            v-model="type_ressources"
            placeholder="1, 2, 3 ..."
            required
        >
      </div>

      <div class="mb-2">
        <label for="content" class="text-gray-700">Contenu</label>
        <textarea
            id="content"
            name="content"
            class="flex-1 w-full px-4 py-2 text-base text-gray-700 placeholder-gray-400 bg-white border border-gray-300 rounded-lg appearance-none focus:outline-none focus:ring-2 focus:ring-green-600 focus:border-transparent"
            rows="5"
            cols="40"
            placeholder="Votre texte"
            v-model="content"
            required
        ></textarea>
      </div>

      <div class="text-right">
        <button type="submit" class="inline-flex items-center px-3 py-2 text-sm font-medium text-right text-white bg-gray-700 rounded-lg hover:bg-gray-800 focus:ring-4 focus:outline-none focus:ring-gray-300">
          Publier
        </button>
      </div>
    </form>
  </section>
</template>

<script>
import axios from 'axios';
import env from "@/config/env";
export default {
  name: "PublishResource",
  data() {
    return {
      nom: "",
      categorie: "",
      type_ressources: "",
      content: ""
    };
  },
  methods: {
    async publishResource() {
      const formData = {
        nom: this.nom,
        categorie: this.categorie,
        type_ressources: this.type_ressources,
        content: this.content
      };
      const config = {
        headers:{
          'Access-Control-Allow-Origin': '*'
        }
      };
      try {
        const response = await axios.post(`${env.baseUrl}/api/ressources`, formData, config);
        console.log(response.data);
      } catch (error) {
        console.error(error);
      }
    }
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>