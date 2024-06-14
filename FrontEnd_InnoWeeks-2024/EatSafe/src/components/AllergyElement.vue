<script setup>
defineProps({
  allergy: {
    type: Object,
    required: true
  }
})
</script>

<template>
  <div class="details">
    <h3>
      <!-- prettier-ignore -->
      <img class="chkbox-img" :src="allergy.url" alt="allergy.alt" width="32" height="32"/>
      <!-- prettier-ignore -->
      <label class="chkbox"><input type="checkbox" class="chkbox-text" >{{ allergy.name }}</label>
    </h3>
  </div>
</template>

<style scoped>
h3 {
  font-size: 0.7rem;
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
