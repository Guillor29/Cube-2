<template>
  <div
    id="fondabsolu"
  >
    <div
      id="background"
      class="relative box-contenth-550 pt-2 mx-1/3"
    >
      <div
        static
        flex
        justify-center
        h-450
      >
        <div class="box-content flex text-left h-96 w-2/3 mb-12 mx-auto rounded-3xl bg-gradient-to-r from-indigo-900 to-red-500">
          <h1 class="text-3xl font-bold m-auto xl:ml-96 mt-48 md:mt-52 xl:mt-80">
            Anna B. Max
          </h1>
        </div>
        <img
          class=" absolute w-40 h-40 rounded-full bottom-0 left-1/4
        border-2 border-white mx-autorounded-full object-fill"
          :src="require('/src/assets/images/baymax.png')"
        >
      </div>
    </div>
  </div>
  
  <div class="box-content flex flex-col mx-auto w-3/4">
    <div class="m-auto xl:ml-96">
      <AvatarsFriends />
    </div>
  </div>
</template>

<script>
import AvatarsFriends from './AvatarsFriends.vue'

export default {
  name: "TheProfil",
  components: {
    AvatarsFriends,
  }
}
</script>

<style scoped>
#fondabsolu {
  height: 435px;
}
  #background {
    height: 430px;
  }

  h1 {
    color: white;
  }
</style>