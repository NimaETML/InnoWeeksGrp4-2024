<script setup>
defineProps({
  allergy: {
    type: Object,
    required: true
  }
})

//Image.src = props.allergy.url

//const currentName = 'not loaded yet'

/*
function getNameFromNumName(allergyId) {
  allergies.forEach((currentAllergy) => {
    if ((allergyId = currentAllergy[0])) {
      return currentAllergy[1]
    }
  })
}*/
/*
onMounted(async () => {
  currentName = await getNameFromNumName(props.allergy.id)
})*/
</script>

<template>
  <div class="details">
    <h3>
      <!-- IMAGE NON FONCTIONNEL -->
      <!-- prettier-ignore -->
      <img src="" alt="allergy.alt"/>
      <!-- prettier-ignore -->
      <input type="checkbox"/>
      <label for="1">{{ allergy.name }}</label>
    </h3>
  </div>
</template>

<style scoped>
h3 {
  font-size: 1.3rem;
  font-weight: 500;
  margin-bottom: 0.6rem;
  color: var(--color-heading);
}

@media (min-width: 1024px) {
}
</style>
