<script setup>
import { onMounted, ref } from 'vue'

defineProps({
  allergy: {
    type: Object,
    required: true
  }
}) /*
document.querySelectorAll('.option').forEach((option) => {
  option.addEventListener('click', () => {
    isOption = false
    isSelected = true
    console.log(isSelected)
  })
})

let isOption = ref(null)
let isSelected = ref(null)
onMounted(() => {
  isOption = true
  isSelected = false
  console.log(isSelected)
})

function toggleClass() {
  let currnet = document.getElementById(1)
  if ((currnet.classList = 'option')) {
    currnet.classList.remove('selected')
    currnet.classList.add('option')
  } else {
    currnet.classList.remove('option')
    currnet.classList.add('selected')
  }
}*/

// Script pour gérer la sélection des options
document.querySelectorAll('.option').forEach((option) => {
  option.addEventListener('click', () => {
    // Basculer la sélection de l'option cliquée
    option.classList.toggle('selected')
  })
})
</script>

<template>
  <main>
    <div class="checkbox-container">
      <div class="allergen-row">
        <img :src="allergy.url" alt="allergy.alt" width="32" height="32" />
        <h2>{{ allergy.name }}</h2>
      </div>
      <div class="options">
        <div class="option" @click="toggleClass">Intolérant</div>
        <div class="option" @click="toggleClass">Allergique</div>
      </div>
    </div>
  </main>
</template>

<style scoped>
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
  display: flex;
  flex-direction: column;
  min-height: 100vh;
  background-color: #f9f9f9;
}

/* Style du contenu principal*/
main {
  width: 100%;
  text-align: center;
}
h3 {
  font-size: 0.7rem;
  font-weight: 500;
  margin-bottom: 1.8rem;
}

main h1 {
  font-size: 28px;
  color: black;
  margin-bottom: 20px;
}

.subtitles {
  display: flex;
  justify-content: center;
  gap: 100px;
  font-weight: bold;
  margin-bottom: 20px;
}

.subtitles div:first-child {
  flex: 2;
  text-align: left;
}

.subtitles div {
  flex: 1;
}

/* Conteneur pour les allergènes */
.checkbox-container {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 2em;
  margin-bottom: 15%;
}

/* Ligne de chaque allergène */
.allergen-row {
  display: flex;
  align-items: center;
  gap: 1em;
}

.allergen-row h2 {
  margin: 0;
  font-size: 20px;
}

.options {
  display: flex;
  gap: 40px;
}

.option {
  display: inline-block;
  background-color: white;
  padding: 10px 20px;
  border: 2px solid #53c6b9;
  border-radius: 4px;
  cursor: pointer;
  transition:
    background-color 0.3s,
    border-color 0.3s;
}

.option:hover {
  background-color: #53c6b9;
  color: white;
  border-color: #53c6b9;
}

.option.selected {
  background-color: #53c6b9;
  color: white;
  border-color: #53c6b9;
}
</style>
