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

let nameText = ref(null)
let quantityText = ref(null)
let allergyImg = ref(null)

// Recupère le text pour la quatité stocké en int
function getQuantityTextFromQuantityNum(QuantityNameId) {
  quantities.forEach((currentQuantity) => {
    if (QuantityNameId == currentQuantity.id) {
      quantityText.value = currentQuantity.text
    }
  })
}

// Recupère le text pour le nom de l'allergie stocké en int
function getIngredientNameFromId(IngredientNameId) {
  allergies.forEach((currentAllergy) => {
    if (IngredientNameId == currentAllergy.id) {
      nameText.value = currentAllergy.name
      allergyImg.value = currentAllergy.url
    }
  })
}

onMounted(() => {
  getIngredientNameFromId(props.ingredient.numname)
  getQuantityTextFromQuantityNum(props.ingredient.quantity)
  console.log(props.ingredient.necessary)
})
</script>

<template>
  <div class="ingredients">
    <div class="title-ingredients">
      <!-- prettier-ignore -->
      <img id="img" v-if="allergyImg" :src="allergyImg" width="46" height="46"/>
      <!-- prettier-ignore -->
      <p id="name" v-if="nameText" >{{ nameText }}</p>
    </div>
    <div>
      <p class="title-quantity">Quantité :</p>
      <p id="quantity" v-if="quantityText">{{ quantityText }}</p>
    </div>
    <p class="necessarity" v-if="props.ingredient.necessary">INDISPENSABLE</p>
    <p class="necessarity" v-else>pas necessaire</p>
  </div>
</template>

<style scoped>
.ingredients {
  font-weight: 500;
  border: 5px solid green;
  border-radius: 8px;
  padding: 20px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: 1em;
}
.title-ingredients {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 1em;
}
.name {
  padding-left: 10px;
  padding-right: 10px;
  font-size: 1.3rem;
  font-weight: bold;
  border: 1px solid transparent;
}
.title-quantity {
  font-weight: bolder;
}
.description {
  padding-left: 10px;
  padding-right: 10px;
  font-size: 1.1rem;
  border: 1px solid transparent;
}
</style>
