<script setup>
defineProps({
  Menu: {
    type: Object,
    required: false //true
  }
})
import { allergies } from '@/data/allergy_data'
const currentName = 'not loaded yet'

function getNameFromNumName(allergyId) {
  allergies.forEach((currentAllergy) => {
    if ((allergyId = currentAllergy[0])) {
      return currentAllergy[1]
    }
  })
}
const menu = {
  plats: [
    {
      id: '1',
      nomPlat: 'Tomato Soup',
      descriptionPlat: 'slurp slurp',
      allergicIngredients: [
        { id: 61, numname: 1, quantity: 1, needDrop: 'false' },
        { id: 62, numname: 2, quantity: 0, needDrop: 'false' },
        { id: 63, numname: 3, quantity: 2, needDrop: 'true' },
        { id: 64, numname: 4, quantity: 0, needDrop: 'true' },
        { id: 65, numname: 5, quantity: 1, needDrop: 'false' },
        { id: 66, numname: 6, quantity: 2, needDrop: 'false' }
      ]
    },
    {
      id: '2',
      nomPlat: 'Pizza',
      descriptionPlat: 'yum yum',
      allergicIngredients: [
        { id: 436, numname: 1, quantity: 1, needDrop: 'false' },
        { id: 96, numname: 2, quantity: 0, needDrop: 'false' },
        { id: 572, numname: 5, quantity: 1, needDrop: 'false' }
      ]
    },
    {
      id: '3',
      nomPlat: 'Spageth',
      descriptionPlat: 'yum yum also',
      allergicIngredients: [
        { id: 824, numname: 4, quantity: 0, needDrop: 'true' },
        { id: 19, numname: 5, quantity: 1, needDrop: 'false' }
      ]
    }
  ]
}
</script>
<template>
  <div class="register">
    <h1>
      Cette page permet aux utilisateurs de visionner le menu du restaurant scanné, elle devrais
      s'affiché après que le bouton "continuer" soit appuiyer
    </h1>
  </div>
</template>

<style scoped></style>
