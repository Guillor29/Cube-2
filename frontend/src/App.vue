<template>
  <div
    id="fond"
    class="bg-gradient-to-b from-indigo-100 to-white"
  >
    <the-header class="sticky top-0 z-50" />
    <router-view />
    <the-footer class="absolute inset-x-0" />
  </div>
</template>

<script>
import TheFooter from '@/components/navigation/TheFooter'
import TheHeader from '@/components/navigation/TheHeader'

export default {
components: {
    TheFooter,
    TheHeader,
  }
}
</script>

<style >
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
#fond {
  height: 700px;
}
</style>