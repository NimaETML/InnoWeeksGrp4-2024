<script setup>
import AllergyElement from '@/components/AllergyElement.vue'
import { onMounted, ref } from 'vue'
import { allergies } from '@/data/allergy_data'
//import BookService from '@/services/BookService'

//const allergies = ref(null)

//function continue() {}

//onMounted()
</script>

<template>
  <div class="item">
    <div class="details">
      <form method="get" action="">
        <p>
          <AllergyElement v-for="allergy in allergies" :key="allergy.id" :allergy="allergy" />
        </p>
        <input type="submit" name="envoyer" value="continuer" class="cta" />
      </form>
    </div>
  </div>
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
</style>
