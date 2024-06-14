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
  <div>
    <h3 class="ingredients">
      <!-- prettier-ignore -->
      <img id="img" v-if="allergyImg" :src="allergyImg" width="46" height="46"/>
      <!-- prettier-ignore -->
      <p id="name" v-if="nameText" >{{ nameText }}</p>
      <p id="quantity" v-if="quantityText">{{ quantityText }}</p>
      <p class="necessarity" v-if="props.ingredient.necessary">INDISPENSABLE</p>
      <p class="necessarity" v-else>pas necessaire</p>

    </h3>
  </div>
</template>

<style scoped>
#img {
  margin-right: 5px;
  margin-left: auto;
}
#name {
  margin-right: auto;
  margin-left: 5px;
}
#quantity {
  margin-right: auto;
  margin-left: auto;
}
.necessarity {
  margin-right: auto;
  margin-left: auto;
}

h3 {
  font-weight: 500;
  margin-bottom: 1.8rem;
  text-align: center;
  border: 5px solid green;
  border-radius: 8px;
  margin-top: 30px;
  padding: 20px;
}

.ingredients {
  display: flex;
  justify-content: center;
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
