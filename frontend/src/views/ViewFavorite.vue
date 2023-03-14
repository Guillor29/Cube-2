<template>
  <div
    grid
    grid-cols-3
    place-content-center
  >
    <div class="grid place-content-center">
      <div class="grid sm:grid-cols-1 md:grid-cols-2 "> 
        <div
          v-for="favorite in bdd.favorite"
          :key="favorite.id_fav"
        >
          <section class="mx-3 my-3 w-80 md:w-100 lg:w-100 max-w-lg bg-white border border-gray-200 rounded-lg shadow-lg">
            <form
              class="px-10"
            >
              <h1 class="text-center font-bold p-10">
                {{ favorite.name }}
              </h1>
            </form>
          </section>
        </div>
      </div>
    </div>
    
    <div class="grid place-content-center" />
  </div>
</template>

<script setup>
import bdd from '../datas/bdd.json'

</script>

<style>
  
</style>