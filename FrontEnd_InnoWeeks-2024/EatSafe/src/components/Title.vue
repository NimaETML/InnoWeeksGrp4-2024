<script setup>
defineProps({
  app_title: {
    type: String,
    required: true
  },
  restaurant: {
    type: String,
    required: true
  }
})
</script>

<template>
  <div class="greetings">
    <h1 class="green">{{ app_title }}</h1>
    <h2>vous accèdez au menu du restaurant {{ restaurant }}</h2>
  </div>
</template>

<style scoped>
h1 {
  font-weight: 500;
  font-size: 2.6rem;
}
h2 {
  text-align: center;
}

h2 {
  font-size: 1.3rem;
}

.greetings h1,
.greetings h3 {
  text-align: center;
}
</style>
