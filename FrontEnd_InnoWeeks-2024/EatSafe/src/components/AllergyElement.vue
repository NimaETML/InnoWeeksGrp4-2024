<script setup>
defineProps({
  allergy: {
    type: Object,
    required: true
  }
})

import { onMounted, ref } from 'vue'

allergies = Array([1, 'Arachide'], [2, 'Céleri'], [3, 'Crustacés'], [4, 'Avoine'], [5, 'Blé'], [6, 'Amande']);

const currentName = "not loaded yet"

// PAS ENCORE FINI
getNameFromNumName(() => {
  foreach allergy in allergies {
    if (id = allergy[0])
    {
      return allergy[1]
    }
  }
})

onMounted(() => {
  currentName = getNameFromNumName({{ allergy.id }})
})
</script>

<template>
  <!-- prettier-ignore -->
  <input type="checkbox"/>
  <label for="1">{{ currentName }}</label>
</template>

<style scoped>
.item {
  margin-top: 2rem;
  display: flex;
  position: relative;
}

i {
  display: flex;
  place-items: center;
  place-content: center;
  width: 32px;
  height: 32px;
  color: var(--color-text);
}

h3 {
  font-size: 1.2rem;
  font-weight: 500;
  margin-bottom: 0.4rem;
  color: var(--color-heading);
}

@media (min-width: 1024px) {
}
</style>
