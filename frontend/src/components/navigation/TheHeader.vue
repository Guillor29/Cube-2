<template class="items-center justify-between">
  <nav
    class="lg:flex lg:max-w-full bg-white "
    aria-label="Global"
  >
    <div class="rounded-full bg-light-grey-1 h-12 w-12 m-2 mt-3">
      <img
        class="object-fill rounded-full"
        :src="require('/src/assets/images/logo-60x60.png')"
      >
    </div>
    <search-bar />
    <div class="mx-auto flex max-w-7xl items-center justify-between">
      <router-link to="/">
        <button class="rounded-full bg-light-grey-1 p-4 m-2">
          <font-awesome-icon
            icon="fa-solid fa-house"
            class="text-2xl"
          />
        </button>
      </router-link>

      <router-link to="/ressources">
        <button class="rounded-full bg-light-grey-1 p-4 m-2">
          <font-awesome-icon
            icon="fa-solid fa-photo-film"
            class="text-2xl"
          />
        </button>
      </router-link>

      <router-link to="/favoris">
        <button class="rounded-full bg-light-grey-1 p-4 m-2">
          <font-awesome-icon
            icon="fa-solid fa-heart-circle-check"
            class="text-2xl"
          />
        </button>
      </router-link>

      <router-link to="/apropos">
        <button class="rounded-full bg-light-grey-1 p-4 m-2">
          <font-awesome-icon
            icon="fa-solid fa-file-circle-question"
            class="text-2xl"
          />
          <!-- A propos -->
        </button>
      </router-link>
    </div>
    <button class="rounded-full bg-light-grey-1 p-4 m-2">
      <font-awesome-icon
        icon="fa-solid fa-bars"
        class="text-2xl"
      />
    </button>
    <button class="rounded-full bg-light-grey-1 p-4 m-2">
      <font-awesome-icon
        icon="fa-regular fa-message"
        class="text-2xl"
      />
    </button>
    <button class="rounded-full bg-light-grey-1 p-4 m-2">
      <font-awesome-icon
        icon="fa-solid fa-user-astronaut"
        class="text-2xl"
      />
    </button>
  </nav>
</template>

<script>
import SearchBar from "../composables/SearchBar.vue";

export default {
  name: "TheHeader",
  components: {
    SearchBar,
  },
};
</script>

<style scoped>
nav {
  padding: 8px;
  text-align: center;
  color: #000091;
}

nav a {
  font-weight: bold;
  color: #000091;
}

nav a.router-link-exact-active {
  color: #e1000f;
}
</style>
