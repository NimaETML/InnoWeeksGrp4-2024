<script setup>
defineProps({
  title_text: {
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
  <div class="top_text">
    <h1 id="title_text">{{ title_text }}</h1>
    <h1 id="rest_title">{{ restaurant }}</h1>
  </div>
</template>

<style scoped>
h1 {
  font-weight: 500;
  font-size: 1rem;
  top: -10px;
}

#rest_title {
  font-weight: 700;
  font-size: 1.3rem;
  top: -10px;
  color: rgb(47, 153, 47); /*  CHANGER COULEURS POUR COULEUR PALLETTE*/
}

.top_text {
  text-align: center;
  /*
  display: flex;
  text-align: right;*/
}
</style>
