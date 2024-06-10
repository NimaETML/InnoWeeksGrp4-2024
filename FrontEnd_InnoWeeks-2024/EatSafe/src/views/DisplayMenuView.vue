<script setup>
import { menus } from '@/data/menu_data'
import MenuElement from '@/components/MenuElement.vue'

const currentName = 'not loaded yet'

function getNameFromNumName(allergyId) {
  allergies.forEach((currentAllergy) => {
    if ((allergyId = currentAllergy[0])) {
      return currentAllergy[1]
    }
  })
}
</script>
<template>
  <div class="register">
    <h1>
      Cette page permet aux utilisateurs de visionner le menu du restaurant scanné, elle devrais
      s'affiché après que le bouton "continuer" soit appuiyer
    </h1>
    <p>
      <MenuElement v-for="menu in menus" :key="menu.id" :menu="menu" />
    </p>
  </div>
</template>

<style scoped></style>
