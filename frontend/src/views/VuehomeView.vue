<template>
  <div class="vuehome">
    <img
      alt="Vue logo"
      src="../assets/logo.png"
    >
    <HelloWorld msg="Welcome to Your Vue.js App" />
  </div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from '@/components/HelloWorld.vue';

export default {
  name: 'VuehomeView',
  components: {
    HelloWorld
  }
}
</script>

<style scoped>
.vuehome{
  text-align: center;
  color: #2c3e50;
}
</style>
