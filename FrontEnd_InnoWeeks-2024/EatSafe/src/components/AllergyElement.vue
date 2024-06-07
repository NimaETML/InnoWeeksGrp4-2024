<script setup>
defineProps({
  allergy: {
    type: Object,
    required: true
  }
})
//const currentName = 'not loaded yet'

/*
function getNameFromNumName(allergyId) {
  allergies.forEach((currentAllergy) => {
    if ((allergyId = currentAllergy[0])) {
      return currentAllergy[1]
    }
  })
}*/
</script>

<template>
  <div class="details">
    <h3>
      <!-- IMAGE NON FONCTIONNEL -->
      <!-- prettier-ignore -->
      <img class="chkbox-img" :src="allergy.url" alt="allergy.alt" width="32" height="32"/>
      <!-- prettier-ignore -->
      <label class="chkbox"><input type="checkbox" class="chkbox-text" >{{ allergy.name }}</label>
    </h3>
  </div>
</template>

<style scoped>
h3 {
  font-size: 1.3rem;
  font-weight: 500;
  margin-bottom: 1.8rem;
  text-align: center;
  border: 3px solid green;
  border-radius: 8px;
}

.chkbox {
  padding-left: 10px;
  padding-right: 10px;
  font-weight: bold;
  border: 1px solid transparent;
}

.chkbox-img {
  text-align: center;
}

input[type='checkbox'] {
  float: right;
  padding-left: 10px;
  text-align: center;
  /* center checkbox horizontally */
  vertical-align: middle;
}
</style>
