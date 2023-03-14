<template class="z-5">
  <div>
    <div class="flex items-center space-x-2 text-base">
      <h4 class="font-semibold text-slate-900">
        Amis
      </h4>
      <span class="rounded-full bg-slate-100 px-2 py-1 text-xs font-semibold text-slate-700">543</span>
    </div>

    <div class="flex -space-x-4">
      <img
        class="object-cover w-10 h-10 border-2 border-white rounded-full dark:border-gray-800"
        :src="require('/src/assets/images/profile-picture-5.jpg')"
        alt=""
      >
      <img
        class="w-10 h-10 border-2 border-white rounded-full dark:border-gray-800"
        :src="require('/src/assets/images/profile-picture-2.jpg')"
        alt=""
      >
      <img
        class="w-10 h-10 border-2 border-white rounded-full dark:border-gray-800"
        :src="require('/src/assets/images/profile-picture-3.jpg')"
        alt=""
      >
      <a
        class="flex items-center justify-center w-10 h-10 text-xs font-medium text-white bg-gray-700 border-2 border-white rounded-full hover:bg-gray-600 dark:border-gray-800"
        href="#"
      >+99</a>
    </div>
    <div class="mt-3 text-sm font-medium" />
  </div>
</template>

<script>
export default {
  name: "AvatarsFriends",
}
</script>

<style>
  
</style>