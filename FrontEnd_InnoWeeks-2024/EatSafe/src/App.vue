<script setup>
import { RouterLink, RouterView } from 'vue-router'
import Title from './components/Title.vue'
import Footer from './components/Footer.vue'

</script>

<template>
  <div>
    <header>
      <img alt="Vue logo" class="logo" src="@/assets/logo.svg" width="40" height="40" />
      <h1 class="green">EatSafe</h1>
      <div class="wrapper">
        <nav>
          <RouterLink to="/">Home</RouterLink>
          <RouterLink to="/about">About</RouterLink>
          <RouterLink to="/display-menu">Menu</RouterLink>
        </div>
      </nav>
      <div class="wrapper">
        <Title restaurant="Restaurant Léman" />
      </div>
    </header>
    <RouterView />
  </div>
  <Footer></Footer>
</template>

<style scoped>
header {
  display: flex;
  flex-direction: column;
  justify-content: space-around;
  align-items: center;
}

.wrapper {
  width: 90%;
  padding: 0 5%;
}

h1 {
  font-weight: 500;
  font-size: 1.8rem;
  color: rgb(31, 117, 31); /*  CHANGER COULEURS POUR COULEUR PALLETTE*/
  position: relative;
  text-align: center;
  top: -25px;
}
.logo {
  display: block;
  width: 3em;
}

.logo-contain {
  display: flex;
  justify-content: center;
  align-items: center;
}

nav {
  width: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: 2em;
  padding: 7% 0;
  background-color: rgba(194, 194, 194, 0.368);
  box-shadow:
    rgba(0, 0, 0, 0.19) 0px 10px 20px,
    rgba(0, 0, 0, 0.23) 0px 6px 6px;
  margin-bottom: 10%;

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
  color: #53c6b9;
  text-decoration: none;
}
nav a:first-of-type {
  border: 0;
}
</style>
