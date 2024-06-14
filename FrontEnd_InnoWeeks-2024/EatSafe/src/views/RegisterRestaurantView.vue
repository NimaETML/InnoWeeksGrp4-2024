<script setup>
import Title from '@/components/Title.vue'
import { onMounted, ref } from 'vue'
let message = ref(null)
</script>

<template>
  <div class="register">
    <!-- prettier-ignore -->
    <Title
      restaurant="Pizza Squizz"
      title_text="Cette page permet aux restaurants d'enregistrer leurs menu dans la base de donnée et de
      générer un code QR pour celui-ci"
    />
    <h1></h1>
    <h2></h2>
    <p>Message is: {{ message }}</p>
    <input v-model="message" placeholder="edit me" />
  </div>
</template>

<style scoped></style>
