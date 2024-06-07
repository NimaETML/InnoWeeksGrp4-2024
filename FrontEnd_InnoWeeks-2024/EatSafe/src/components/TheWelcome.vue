<script setup>
import WelcomeItem from './WelcomeItem.vue'
</script>

<template>
  <WelcomeItem>
    <template #icon>
      <i>
        <slot name="icon"></slot>
      </i>
    </template>
  </WelcomeItem>
</template>
