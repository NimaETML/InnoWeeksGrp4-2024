<script setup>
const props = defineProps({
  ingredient: {
    type: Object,
    required: true
  }
})
import { onMounted, ref } from 'vue'
import { allergies } from '@/data/allergy_data'
import { quantities } from '@/data/quanity_data'

let currentName = ref(null)

let quantityName = ref(null)

function getQuantityTextFromQuantityNum(QuantityNameId) {
  console.log(QuantityNameId)
  quantities.forEach((currentQuantity) => {
    if (QuantityNameId == currentQuantity.id) {
      console.log(currentQuantity.text)
      quantityName = currentQuantity.text
    }
  })
}

function getIngredientNameFromId(IngredientNameId) {
  allergies.forEach((currentAllergy) => {
    if (IngredientNameId == currentAllergy.id) {
      currentName = currentAllergy.name
    }
  })
}
onMounted(() => {
  getIngredientNameFromId(props.ingredient.numname)
  getQuantityTextFromQuantityNum(props.ingredient.quantity)
})
</script>

<template>
  <div class="ingredients">
    <h3>
      <!-- prettier-ignore -->
      <!--<img class="chkbox-img" :src="meal.img_url" width="140" height="140"/>-->
      <!-- prettier-ignore -->
      <p class="grid-item">{{ currentName, quantityName }}</p>
      <p class="grid-item">{{ quantityName }}</p>
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
</style>
