-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 06 juin 2024 à 13:47
-- Version du serveur :  5.7.11
-- Version de PHP : 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_eatsafe`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_allergie`
--

CREATE TABLE `t_allergie` (
  `idallergie` int(11) NOT NULL,
  `allnom` varchar(45) DEFAULT NULL,
  `allquantite` tinyint(1) DEFAULT NULL,
  `allnecessite` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_allergie`
--

INSERT INTO `t_allergie` (`idallergie`, `allnom`, `allquantite`, `allnecessite`) VALUES
(1, 'Poisson', 1, 1),
(2, 'Blé (gluten)', 1, 1),
(3, 'Œufs', 1, 1),
(4, 'Tomates', 1, 1),
(5, 'Lait', 0, 0),
(6, 'Céleri', 1, 1),
(7, 'Gluten', 0, 0),
(8, 'Maïs', 1, 1),
(9, 'Avocat', 1, 1),
(10, 'Oignons', 1, 1),
(11, 'Ail', 1, 1),
(12, 'Noix', 0, 0),
(13, 'Arômes', 0, 0),
(14, 'Levure', 1, 1),
(15, 'Fraises', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `t_contenir`
--

CREATE TABLE `t_contenir` (
  `fkallergie` int(11) NOT NULL,
  `fkplat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_contenir`
--

INSERT INTO `t_contenir` (`fkallergie`, `fkplat`) VALUES
(1, 1),
(2, 3),
(3, 3),
(2, 4),
(3, 4),
(4, 4),
(4, 5),
(5, 5),
(2, 6),
(5, 6),
(6, 6),
(8, 7),
(4, 8),
(9, 8),
(10, 8),
(11, 8),
(3, 9),
(6, 9),
(3, 10),
(15, 10),
(3, 11),
(5, 11),
(12, 11),
(13, 11),
(2, 12),
(3, 12),
(5, 12),
(12, 12),
(14, 12),
(2, 13),
(3, 13),
(5, 13),
(14, 13),
(15, 13),
(2, 14);

-- --------------------------------------------------------

--
-- Structure de la table `t_menu`
--

CREATE TABLE `t_menu` (
  `idmenu` int(11) NOT NULL,
  `mennom` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_menu`
--

INSERT INTO `t_menu` (`idmenu`, `mennom`) VALUES
(1, 'menu');

-- --------------------------------------------------------

--
-- Structure de la table `t_plat`
--

CREATE TABLE `t_plat` (
  `idplat` int(11) NOT NULL,
  `platitre` varchar(60) DEFAULT NULL,
  `pladescription` varchar(255) DEFAULT NULL,
  `fkmenu` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_plat`
--

INSERT INTO `t_plat` (`idplat`, `platitre`, `pladescription`, `fkmenu`) VALUES
(1, 'Grilled Fish And Potatoes', 'Poisson grillé servi avec des pommes de terre. Le poisson est une source de protéines riche en acides gras oméga-3.', 1),
(2, 'Chicken and rice', 'Poulet tendre accompagné de riz. Un plat simple mais savoureux, souvent apprécié pour sa facilité et sa valeur nutritionnelle.', 1),
(3, 'Turkey and Ham pie', 'Tourte remplie de dinde et de jambon. Ce plat combine des viandes blanches et rouges dans une pâte croustillante.', 1),
(4, 'Vegetable pasta', 'Pâtes garnies de légumes frais. Un repas équilibré et coloré, idéal pour les végétariens.', 1),
(5, 'Tomato soup', 'Soupe de tomates onctueuse et réconfortante. Parfaite en entrée ou en repas léger.', 1),
(6, 'Chicken soup', 'Soupe au poulet riche en saveurs, souvent utilisée comme remède traditionnel pour les rhumes.', 1),
(7, 'Crispy corn', 'Maïs croustillant, parfait pour un en-cas ou un accompagnement.', 1),
(8, 'Guacamole salad', 'Salade fraîche à base de guacamole, avec des avocats crémeux et des légumes croquants.', 1),
(9, 'Chicken salad', 'Salade composée de poulet tendre et de légumes frais, souvent assaisonnée de mayonnaise.', 1),
(10, 'Fruit and cream', 'Assortiment de fruits frais servis avec de la crème. Un dessert léger et rafraîchissant.', 1),
(11, 'Ice cream', 'Crème glacée douce et crémeuse, disponible dans une variété de saveurs.', 1),
(12, 'Chocolate cake', 'Gâteau au chocolat riche et moelleux, souvent garni de ganache ou de crème au beurre.', 1),
(13, 'Strawberry cake', 'Gâteau aux fraises délicat, avec des couches de fraises fraîches et de crème.', 1),
(14, 'Apple pie', 'Tarte aux pommes classique, avec des pommes sucrées et une croûte dorée.', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_allergie`
--
ALTER TABLE `t_allergie`
  ADD PRIMARY KEY (`idallergie`);

--
-- Index pour la table `t_contenir`
--
ALTER TABLE `t_contenir`
  ADD PRIMARY KEY (`fkallergie`,`fkplat`),
  ADD KEY `fkplat` (`fkplat`);

--
-- Index pour la table `t_menu`
--
ALTER TABLE `t_menu`
  ADD PRIMARY KEY (`idmenu`);

--
-- Index pour la table `t_plat`
--
ALTER TABLE `t_plat`
  ADD PRIMARY KEY (`idplat`),
  ADD KEY `fkmenu` (`fkmenu`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_allergie`
--
ALTER TABLE `t_allergie`
  MODIFY `idallergie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `t_menu`
--
ALTER TABLE `t_menu`
  MODIFY `idmenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `t_plat`
--
ALTER TABLE `t_plat`
  MODIFY `idplat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_contenir`
--
ALTER TABLE `t_contenir`
  ADD CONSTRAINT `t_contenir_ibfk_1` FOREIGN KEY (`fkallergie`) REFERENCES `t_allergie` (`idallergie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_contenir_ibfk_2` FOREIGN KEY (`fkplat`) REFERENCES `t_plat` (`idplat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_plat`
--
ALTER TABLE `t_plat`
  ADD CONSTRAINT `t_plat_ibfk_1` FOREIGN KEY (`fkmenu`) REFERENCES `t_menu` (`idmenu`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
