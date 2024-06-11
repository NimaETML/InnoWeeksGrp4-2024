<script setup>
import { RouterLink, RouterView } from 'vue-router'
import Title from './components/Title.vue'
import Footer from './components/Footer.vue'
</script>

<template>
  <div>
    <header>
      <img alt="Vue logo" class="logo" src="@/assets/logo.svg" width="50" height="50" />

      <div class="wrapper">
        <Title app_title="EatSafe" restaurant="Pizza Squizz" />

        <nav>
          <RouterLink to="/">Home</RouterLink>
          <RouterLink to="/about">About</RouterLink>
          <RouterLink to="/display-menu">Menu</RouterLink>
        </nav>
      </div>
    </header>
    <RouterView />
  </div>
  <Footer></Footer>
</template>

<style scoped>
header {
  line-height: 1.6;
  max-height: 100vh;
  padding-bottom: 40px;
}

.logo {
  display: block;
  margin: 0 auto 2rem;
}

nav {
  width: 100%;
  font-size: 22px;
  text-align: center;
  margin-top: 2rem;
}
nav a.router-link-exact-active {
  color: var(--color-text);
}

nav a.router-link-exact-active:hover {
  background-color: transparent;
}

nav a {
  display: inline-block;
  padding: 0 1rem;
  border-left: 1px solid var(--color-border);
}

nav a:first-of-type {
  border: 0;
}
</style>
