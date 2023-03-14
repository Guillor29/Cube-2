<template>
  <div class="wall z-1">
    <div class="container p-2 mx-auto w-full md:w-10/12 lg:w-9/12">
      <div class="flex flex-row flex-wrap py-4">
        <aside class="w-full sm:w-1/3 md:w-1/4 px-2">
          <div class="sticky top-0 p-4 bg-white rounded-xl w-full">
            <h2 class="text-xl">
              Qui suis-je ?
            </h2>
            <br>

            <h4 class="text-md">
              👨‍🦱 Présentation
            </h4>
            <p class="text-xs">
              Bonjour, actuellement en alternance à Arkéa, je cherche à maitriser Vue.js afin de bientot conquérir le monde !
            </p>
            <br>

            <h4 class="text-md">
              🏠 Lieu
            </h4>
            <p class="text-xs">
              12 rue du Chameau vert, 29200 Brest
            </p>
            <br>

            <h4 class="text-md">
              🕺 Loisirs
            </h4>
            <ul class="text-xs">
              <li>- pêche</li>
              <li>- jardinage</li>
              <li>- koh-Lantah</li>
            </ul>
            <br>
            
            <h4 class="text-md">
              😡 Je n'aime pas
            </h4>
            <ul class="text-xs">
              <li>- les pokemons</li>
              <li>- le langage java</li>
              <li>- les politiciens sauf Méluche !</li>
            </ul>
            <br>

            <h4 class="text-md">
              🌐 Liens
            </h4>
            <ul class="text-xs">
              <li>- twitter.com/username</li>
              <li>- facebook.com/username</li>
              <li>- monsite.perso</li>
            </ul>
            <br>
          </div>
        </aside>

        <main role="main" class="w-full sm:w-2/3 md:w-3/4 pt-1 px-2" id="main-content">
          <h1 class="text-2xl py-4" id="home">Fil d'actualité</h1>
          <PublishResource title="Title !" text="Text !" />
          <!-- faire une logique pour afficher les 5 dernières ressources dans des DisplayResource -->
          <DisplayResource />
          
          <!-- {{ ressources.data.ressources.nom }} -->
        </main>
      </div>
    </div>
  </div>
</template>

<script>
// @ is an alias to /src
// import HelloWorld from '@/components/HelloWorld.vue';
import DisplayResource from '@/components/DisplayResource.vue';
import PublishResource from '@/components/PublishResource.vue';

// let nom = "";
// let content = "";

export default {
  name: 'WallView',
  components: {
    DisplayResource,
    PublishResource
  },
  data() {
    return {
      ressources: [],
    };
  },
  mounted() {
    // let url = "http://localhost:3000/api/ressources";
    // fetch(url, {
    //   method: "GET",
    //   headers: {
    //     // "Content-Type": "*/*; charset=UTF-8" //pour un corps de type chaine
    //   },
    //   mode: "cors",
    // })
    // .then( response => {
    //   console.log(response);
    //   if (response.ok){
    //       console.log('success !');
    //       return response.json();
    //   } else{
    //       console.log("fetch raté ", response.status, response.statusText)
    //   }
    // })
    // .catch( err => { 
    //     console.log("rejected : ", err);
    // })
    // .then( data => {
    //   // let mainEl = document.getElementById('main-content');
    //   data.forEach(ressource => {
    //     console.log(ressource)
    //     // nom = ressource.nom;
    //     // content = ressource.content;
    //     // générer un DisplayResource auquel on envoie les datas et le placer dans la page
    //   });
    // })
    // .catch( err => { 
    //     console.log(err);
    // })
  },
}
</script>

<style scoped>

</style>