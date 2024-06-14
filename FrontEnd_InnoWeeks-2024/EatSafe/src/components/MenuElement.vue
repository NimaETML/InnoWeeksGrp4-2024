<script setup>
defineProps({
  menu: {
    type: Object,
    required: true
  }
})
import MealElement from '@/components/MealElement.vue'
</script>

<template>
  <div class="menu-box">
    <h3>
      <!-- prettier-ignore 
      <img class="chkbox-img" :src="menu.img_url" width="280" height="280"/>-->
      <!-- prettier-ignore -->
      <div
        class="title-box"
        
        v-bind:style="{
          'background-image': 'url(' + menu.img_url + ')',
          'background-size': '120%',   'opacity': '.5'
        }"
      > 
        <h2 class="name">
          {{ menu.menu_name }}
        </h2>
      </div>

      <h4 class="description">{{ menu.menu_description }}</h4>
      <p>
        <MealElement v-for="meal in menu.meals" :key="meal.id" :meal="meal" />
      </p>
    </h3>
  </div>
</template>

<style scoped>
/* ccs fait.... */ /* SAUF TITRE TTRANSPARENT*/
.title-box {
  width: 70vw;
  height: 40vw;
  background-position: center;
  display: flex;
  justify-content: center;
}

h3 {
  font-size: 1.3rem;
  font-weight: 500;
  margin-bottom: 1.8rem;
  text-align: center;
  border: 8px solid green;
  border-radius: 8px;
  padding-top: 30px;
  padding-left: 30px;
  padding-right: 30px;
}

.name {
  margin-top: auto;
  margin-bottom: auto;
  padding-left: 10px;
  padding-right: 10px;
  font-size: 2.2rem;
  font-weight: bold;
  border: 1px solid transparent;
}

.description {
  padding-left: 10px;
  padding-right: 10px;
  font-size: 1.5rem;
  border: 1px solid transparent;
}

.menu-box {
  margin-top: 40px;
}

input[type='checkbox'] {
  float: right;
  padding-left: 10px;
  text-align: center;
  /* center checkbox horizontally */
  vertical-align: middle;
}
</style>
