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
  <div class="main">
    <div class="checkbox-container">
      <div class="allergen-row">
        <h2>{{ allergy.name }}</h2>
        <div class="options">
          <img :src="allergy.url" alt="allergy.alt" width="32" height="32" />
          <div id="1" class="option" @click="toggleClass">Intolérant</div>
          <div id="2" class="option" @click="toggleClass">Allergique</div>
        </div>
      </div>
    </div>
  </div>
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

/* Style de l'en-tête */
.header {
  width: 100%;
  background-color: white;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px 20px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.header .logo {
  font-size: 24px;
  color: #53c6b9;
}

.header nav a {
  margin: 0 10px;
  text-decoration: none;
  color: black;
  font-weight: bold;
}

.header nav a:hover {
  color: #53c6b9;
}

.header .button {
  background-color: black;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.3s;
}

.header .button:hover {
  background-color: #333;
}

/* Style du contenu principal */
.main {
  text-align: center;
  padding: 40px 20px;
  flex: 1;
}

.main h1 {
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
  align-items: flex-start;
  gap: 20px;
  margin-left: 40px;
}

/* Ligne de chaque allergène */
.allergen-row {
  display: flex;
  align-items: center;
  gap: 40px;
}

.allergen-row h2 {
  margin: 0;
  width: 200px;
  text-align: left;
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

/* Style du pied de page */
.footer {
  width: 100%;
  background-color: #333;
  color: white;
  padding: 20px;
  display: flex;
  justify-content: center;
  align-items: center;
  position: relative;
  bottom: 0;
}

.footer-content {
  width: 100%;
  max-width: 1200px;
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
}

.footer .social-icons {
  display: flex;
  gap: 15px;
}

.footer .social-icons i {
  font-size: 24px;
  color: white;
  transition: color 0.3s;
}

.footer .social-icons i:hover {
  color: #53c6b9;
}

.footer .links {
  display: flex;
  gap: 40px;
}

.footer .links div {
  display: flex;
  flex-direction: column;
  gap: 5px;
}

.footer .links a {
  text-decoration: none;
  color: white;
  transition: color 0.3s;
}

.footer .links a:hover {
  color: #53c6b9;
}

.chkbox {
  padding-left: 10px;
  padding-right: 10px;
  font-weight: bold;
  border: 1px solid transparent;
}

/* Media Queries pour les écrans de téléphone */
@media only screen and (max-width: 600px) {
  .subtitles {
    flex-direction: column;
    gap: 20px;
  }

  .subtitles div {
    flex: auto;
  }

  .checkbox-container {
    align-items: center;
    margin-left: 0;
  }

  .allergen-row {
    flex-direction: column;
    align-items: flex-start;
    gap: 10px;
  }

  .allergen-row h2 {
    font-size: 18px;
    margin-bottom: 10px;
  }

  .options {
    flex-direction: column;
    gap: 10px;
  }
}
</style>
