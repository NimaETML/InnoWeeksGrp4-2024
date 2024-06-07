<script setup>
import AllergyElement from '@/components/AllergyElement.vue'
import { onMounted, ref } from 'vue'
//import BookService from '@/services/BookService'

//const allergies = ref(null)

const allergies = ref([
  {
    id: 1,
    name: 'Arachide',
    url: '../assets/icons/Arachide.png',
    alt: 'Arachide'
  },
  {
    id: 2,
    name: 'Céleri',
    url: '../assets/icons/Celeri.png',
    alt: 'Céleri'
  },
  {
    id: 3,
    name: 'Crustacés',
    url: '../assets/icons/Crustaces.png',
    alt: 'Crustacés'
  },
  {
    id: 4,
    name: 'Avoine',
    url: '../assets/icons/Avoine.png',
    alt: 'Avoine'
  },
  {
    id: 5,
    name: 'Blé',
    url: '../assets/icons/Arachide.png',
    alt: 'Blé'
  },
  {
    id: 6,
    name: 'Amande',
    url: '../assets/icons/Arachide.png',
    alt: 'Amande'
  }
])

onMounted(() => {
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
})
</script>

<template>
  <div class="item">
    <div class="details">
      <form method="get" action="">
        <p>
          <AllergyElement v-for="allergy in allergies" :key="allergy.id" :allergy="allergy" />
        </p>
        <input type="submit" name="envoyer" value="ENVOYER" class="cta" />
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

@media (min-width: 1024px) {
}
</style>
