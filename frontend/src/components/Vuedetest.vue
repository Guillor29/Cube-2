<template>
  <div>
    <p>{{ message }}</p>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'VueDeTest',
  data() {
    return {
      message: ''
    };
  },
  created() {
    axios.get('/api/hello') // bonne route ?
        .then(response => {
          this.message = response.data;
        })
        .catch(error => {
          console.log(error);
        })
    ;
  }
};
</script>

<style scoped>
</style>