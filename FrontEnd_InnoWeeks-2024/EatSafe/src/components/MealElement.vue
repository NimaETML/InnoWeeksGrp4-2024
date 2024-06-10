<script setup>
defineProps({
  meal: {
    type: Object,
    required: true
  }
})
import MealAllergiesElement from '@/components/MealAllergiesElement.vue'
</script>

<template>
  <div class="meals">
    <h3>
      <!-- prettier-ignore -->
      <img class="chkbox-img" :src="meal.img_url" width="140" height="140"/>
      <!-- prettier-ignore -->
      <h2 class="name">{{ meal.meal_name }}</h2>
      <h4 class="description">{{ meal.meal_description }}</h4>
      <p>
        <MealAllergiesElement
          v-for="ingredient in meal.allergicIngredients"
          :key="ingredient.id"
          :ingredient="ingredient"
        />
      </p>
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
