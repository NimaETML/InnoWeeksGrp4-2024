<script setup>
defineProps({
  ingredient: {
    type: Object,
    required: true
  }
})
</script>

<template>
  <div class="ingredients">
    <h3>
      <!-- prettier-ignore -->
      <!--<img class="chkbox-img" :src="meal.img_url" width="140" height="140"/>-->
      <!-- prettier-ignore -->
      <h2 class="name">{{ ingredient.id }}</h2>
      <h4 class="description">{{ ingredient.numname }}</h4>
      <p1 class="description">{{ ingredient.quantity }}</p1>
    </h3>
  </div>
</template>

<style scoped>
h3 {
  font-weight: 500;
  margin-bottom: 1.8rem;
  text-align: center;
  border: 5px solid green;
  border-radius: 8px;
  margin-top: 30px;
  padding: 20px;
}

.name {
  padding-left: 10px;
  padding-right: 10px;
  font-size: 1.3rem;
  font-weight: bold;
  border: 1px solid transparent;
}

.description {
  padding-left: 10px;
  padding-right: 10px;
  font-size: 1.1rem;
  border: 1px solid transparent;
}

input[type='checkbox'] {
  float: right;
  padding-left: 10px;
  text-align: center;
  /* center checkbox horizontally */
  vertical-align: middle;
}
</style>
