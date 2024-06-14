<template>
  <!-- Pied de page du site -->
  <div class="footer">
    <!-- Lien vers les réseaux sociaux -->
    <div class="social-icons">
      <i class="fab fa-facebook-f"></i>
      <i class="fab fa-linkedin-in"></i>
      <i class="fab fa-youtube"></i>
      <i class="fab fa-instagram"></i>
    </div>
    <!-- Liens supplémentaires -->
    <div class="links">
      <div>
        <a href="#">Allergènes</a>
        <a href="#">Nutrition</a>
        <a href="#">Recettes</a>
        <a href="#">Santé</a>
      </div>
      <div>
        <a href="#">Sécurité</a>
        <a href="#">FAQ</a>
        <a href="#">Contact</a>
        <a href="#">À propos</a>
      </div>
      <div>
        <a href="#">Blog</a>
        <a href="#">Partenaires</a>
        <a href="#">Conditions</a>
        <a href="#">Confidentialité</a>
      </div>
    </div>
  </div>
</template>

<style>
/* Style du pied de page */
.footer {
  width: 100%;
  background-color: #333;
  color: white;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 0.9em;
  padding: 5% 0;
}

.footer .social-icons {
  display: flex;
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
  gap: 2.5em;
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
</style>
