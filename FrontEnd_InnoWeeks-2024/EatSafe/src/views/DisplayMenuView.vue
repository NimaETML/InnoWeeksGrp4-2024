<script setup>
import { menus } from '@/data/menu_data'
import MenuElement from '@/components/MenuElement.vue'
import Title from '@/components/Title.vue'
</script>
<template>
  <div class="register">
    <Title restaurant="Pizza Squizz" title_text="Vous accèdez au menu du restaurant:" />
    <!-- <h1>
      Cette page permet aux utilisateurs de visionner le menu du restaurant scanné, elle devrais
      s'affiché après que le bouton "continuer" soit appuiyer
    </h1> -->
    <p>
      <MenuElement v-for="menu in menus" :key="menu.id" :menu="menu" />
    </p>
  </div>
</template>

<style scoped></style>
