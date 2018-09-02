-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 02 sep. 2018 à 23:07
-- Version du serveur :  10.1.34-MariaDB
-- Version de PHP :  7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `odelicies`
--

create database odelicies;

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id_comm` int(11) NOT NULL,
  `texte` text,
  `note` int(11) DEFAULT NULL,
  `auteur` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ingredients`
--

CREATE TABLE `ingredients` (
  `id_ingre` int(11) NOT NULL,
  `libelle_ingre` varchar(50) DEFAULT NULL,
  `id_type_ingre` int(11) NOT NULL,
  `fiche` text,
  `origine` text,
  `choix` text,
  `conservation` text,
  `cuisine` text,
  `plus` text,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ingredients`
--

INSERT INTO `ingredients` (`id_ingre`, `libelle_ingre`, `id_type_ingre`, `fiche`, `origine`, `choix`, `conservation`, `cuisine`, `plus`, `image`) VALUES
(1, 'Agneau', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Biche', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Boeuf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Boudin Blanc', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Caille', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Canard', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Porc', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Volaille', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Artichaut', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Asperges', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Aubergine', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Avocats', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Bettrave', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Avoine', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Lentilles', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Millet', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Orge', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Patate', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Abricots', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Airelles', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Ananas', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Baies', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Bananes', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Bar', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Cabillaud', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Crevette', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Dorade', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Lotte', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Agar agar', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Chocolat', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Citronnelle', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Coquelicot', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Estragon', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `join_bio_recette`
--

CREATE TABLE `join_bio_recette` (
  `id_recette` int(11) NOT NULL,
  `id_bio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `join_classique_recette`
--

CREATE TABLE `join_classique_recette` (
  `id_recette` int(11) NOT NULL,
  `id_classique` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `join_comm_recette`
--

CREATE TABLE `join_comm_recette` (
  `id_recette` int(11) NOT NULL,
  `id_comm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `join_comm_utilisateurs`
--

CREATE TABLE `join_comm_utilisateurs` (
  `id_user` int(11) NOT NULL,
  `id_comm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `join_ingre_recette`
--

CREATE TABLE `join_ingre_recette` (
  `id_recette` int(11) NOT NULL,
  `id_ingre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `join_plat_recette`
--

CREATE TABLE `join_plat_recette` (
  `id_recette` int(11) NOT NULL,
  `id_plat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `join_sous_theme_recette`
--

CREATE TABLE `join_sous_theme_recette` (
  `id_recette` int(11) NOT NULL,
  `id_sous_theme` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `join_utilisateurs_recette`
--

CREATE TABLE `join_utilisateurs_recette` (
  `id_recette` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `plats`
--

CREATE TABLE `plats` (
  `id_plat` int(11) NOT NULL,
  `labelle_plat` varchar(50) NOT NULL,
  `id_type_plat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `plats`
--

INSERT INTO `plats` (`id_plat`, `labelle_plat`, `id_type_plat`) VALUES
(1, 'Autres apéritifs', 1),
(2, 'Bouchées', 1),
(3, 'Feuilletés', 1),
(4, 'Muffins salés', 1),
(5, 'Tapas', 1),
(6, 'Tartines', 1),
(7, 'Féculents', 2),
(8, 'Légumes', 2),
(9, 'Oeufs', 2),
(10, 'Pates', 2),
(11, 'Riz', 2),
(12, 'Boissons sans alcool', 3),
(13, 'Coktails avec alcool', 3),
(14, 'Smoothie', 3),
(15, 'Biscuits', 4),
(16, 'Cakes sucrés', 4),
(17, 'Confitures et gelées', 4),
(18, 'Crèmes, flans et entrements', 4),
(19, 'Crêpes, beignets, gaufres', 4),
(20, 'Cakes', 5),
(21, 'Entrees chaudes', 5),
(22, 'Entrées froides', 5),
(23, 'Pizzas', 5),
(24, 'Quiches et Tartes', 5),
(25, 'Salades', 5),
(26, 'Brioches et Viennoiseries', 6),
(27, 'Pains salés', 6),
(28, 'Autres poissons', 7),
(29, 'Cabillaud', 7),
(30, 'Coquillages', 7),
(31, 'Crevettes', 7),
(32, 'Rougets', 7),
(33, 'Autres sauces', 8),
(34, 'Beurre composé', 8),
(35, 'Condiments', 8),
(36, 'Sauces à bases de légumes', 8),
(37, 'Sauces à base de vin', 8),
(38, 'Agneau', 9),
(39, 'Boeuf', 9),
(40, 'Canard', 9),
(41, 'Porc', 9),
(42, 'Poulet', 9);

-- --------------------------------------------------------

--
-- Structure de la table `recettes`
--

CREATE TABLE `recettes` (
  `id_recette` int(11) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL,
  `ingredient` text,
  `preparation` text,
  `mots_clefs` text,
  `auteur` varchar(50) DEFAULT NULL,
  `commentaire` text,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `recettes`
--

INSERT INTO `recettes` (`id_recette`, `libelle`, `ingredient`, `preparation`, `mots_clefs`, `auteur`, `commentaire`, `image`) VALUES
(1, 'Test', 'Ingre test', 'Prepa test', 'Mots clefs test', NULL, NULL, 'test.jpg'),
(2, 'Test2', 'Test2', 'Test2', 'Test2', NULL, NULL, 'test2');

-- --------------------------------------------------------

--
-- Structure de la table `recettes_bio`
--

CREATE TABLE `recettes_bio` (
  `id_bio` int(11) NOT NULL,
  `libelle_bio` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `recettes_classiques`
--

CREATE TABLE `recettes_classiques` (
  `id_classique` int(11) NOT NULL,
  `libelle_type_classique` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sous_theme`
--

CREATE TABLE `sous_theme` (
  `id_sous_theme` int(11) NOT NULL,
  `labelle_sous_theme` varchar(50) NOT NULL,
  `id_theme` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sous_theme`
--

INSERT INTO `sous_theme` (`id_sous_theme`, `labelle_sous_theme`, `id_theme`) VALUES
(1, 'Cuisine brésiliennes', 1),
(2, 'Cuisine espagnol', 1),
(3, 'Cuisine hollandaise', 1),
(4, 'Cuisine Italienne', 1),
(5, 'Cuisine Russe', 1),
(6, 'Chandeleur', 2),
(7, 'Epiphanie', 2),
(8, 'Paques', 2),
(9, 'Saint-Nicolas', 2),
(10, 'Saint-Patrick', 2),
(11, 'Macarons', 3),
(12, 'Cakes à croquer!', 3),
(13, 'Papillotes de poisson', 3),
(14, 'Quiches et tartes', 3),
(15, 'Brochettes', 3);

-- --------------------------------------------------------

--
-- Structure de la table `tech_bases`
--

CREATE TABLE `tech_bases` (
  `id_tech_bases` int(11) NOT NULL,
  `id_recette` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `themes`
--

CREATE TABLE `themes` (
  `id_theme` int(11) NOT NULL,
  `libelle_theme` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `themes`
--

INSERT INTO `themes` (`id_theme`, `libelle_theme`) VALUES
(1, 'Pays & Régions'),
(2, 'Fêtes'),
(3, 'Tendances');

-- --------------------------------------------------------

--
-- Structure de la table `type_ingre`
--

CREATE TABLE `type_ingre` (
  `id_type_ingre` int(11) NOT NULL,
  `labelle_type_ingre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_ingre`
--

INSERT INTO `type_ingre` (`id_type_ingre`, `labelle_type_ingre`) VALUES
(1, 'Viandes'),
(2, 'Legumes'),
(3, 'Féculents'),
(4, 'Fruits'),
(5, 'Poissons'),
(6, 'Autres');

-- --------------------------------------------------------

--
-- Structure de la table `type_plats`
--

CREATE TABLE `type_plats` (
  `id_type_plat` int(11) NOT NULL,
  `labelle_type_plat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_plats`
--

INSERT INTO `type_plats` (`id_type_plat`, `labelle_type_plat`) VALUES
(1, 'Apéritifs'),
(2, 'Autres plats'),
(3, 'Boisson'),
(4, 'Desserts'),
(5, 'Entrées'),
(6, 'Pains'),
(7, 'Poissons et crustacés'),
(8, 'Sauces, beurres et condiments'),
(9, 'Viandes');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id_user` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pseudo` varchar(25) DEFAULT NULL,
  `mdp` varchar(50) DEFAULT NULL,
  `newsletter` varchar(3) DEFAULT NULL,
  `bons_plans` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id_comm`);

--
-- Index pour la table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id_ingre`),
  ADD KEY `FK_IGREDIENTS_type_ingredients` (`id_type_ingre`);

--
-- Index pour la table `join_bio_recette`
--
ALTER TABLE `join_bio_recette`
  ADD PRIMARY KEY (`id_recette`,`id_bio`),
  ADD KEY `id_bio` (`id_bio`);

--
-- Index pour la table `join_classique_recette`
--
ALTER TABLE `join_classique_recette`
  ADD PRIMARY KEY (`id_recette`,`id_classique`),
  ADD KEY `id_classique` (`id_classique`);

--
-- Index pour la table `join_comm_recette`
--
ALTER TABLE `join_comm_recette`
  ADD PRIMARY KEY (`id_recette`,`id_comm`),
  ADD KEY `id_comm` (`id_comm`);

--
-- Index pour la table `join_comm_utilisateurs`
--
ALTER TABLE `join_comm_utilisateurs`
  ADD PRIMARY KEY (`id_user`,`id_comm`),
  ADD KEY `id_comm` (`id_comm`);

--
-- Index pour la table `join_ingre_recette`
--
ALTER TABLE `join_ingre_recette`
  ADD PRIMARY KEY (`id_ingre`,`id_recette`),
  ADD KEY `id_recette` (`id_recette`);

--
-- Index pour la table `join_plat_recette`
--
ALTER TABLE `join_plat_recette`
  ADD PRIMARY KEY (`id_recette`,`id_plat`),
  ADD KEY `id_plat` (`id_plat`);

--
-- Index pour la table `join_sous_theme_recette`
--
ALTER TABLE `join_sous_theme_recette`
  ADD PRIMARY KEY (`id_recette`,`id_sous_theme`),
  ADD KEY `id_sous_theme` (`id_sous_theme`);

--
-- Index pour la table `join_utilisateurs_recette`
--
ALTER TABLE `join_utilisateurs_recette`
  ADD PRIMARY KEY (`id_recette`,`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `plats`
--
ALTER TABLE `plats`
  ADD PRIMARY KEY (`id_plat`),
  ADD KEY `type_plats_plats` (`id_type_plat`);

--
-- Index pour la table `recettes`
--
ALTER TABLE `recettes`
  ADD PRIMARY KEY (`id_recette`);

--
-- Index pour la table `recettes_bio`
--
ALTER TABLE `recettes_bio`
  ADD PRIMARY KEY (`id_bio`);

--
-- Index pour la table `recettes_classiques`
--
ALTER TABLE `recettes_classiques`
  ADD PRIMARY KEY (`id_classique`);

--
-- Index pour la table `sous_theme`
--
ALTER TABLE `sous_theme`
  ADD PRIMARY KEY (`id_sous_theme`),
  ADD KEY `id_theme` (`id_theme`);

--
-- Index pour la table `tech_bases`
--
ALTER TABLE `tech_bases`
  ADD PRIMARY KEY (`id_tech_bases`,`id_recette`) USING BTREE,
  ADD KEY `id_recette` (`id_recette`);

--
-- Index pour la table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id_theme`);

--
-- Index pour la table `type_ingre`
--
ALTER TABLE `type_ingre`
  ADD PRIMARY KEY (`id_type_ingre`);

--
-- Index pour la table `type_plats`
--
ALTER TABLE `type_plats`
  ADD PRIMARY KEY (`id_type_plat`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id_comm` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `plats`
--
ALTER TABLE `plats`
  MODIFY `id_plat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `recettes`
--
ALTER TABLE `recettes`
  MODIFY `id_recette` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `recettes_bio`
--
ALTER TABLE `recettes_bio`
  MODIFY `id_bio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `recettes_classiques`
--
ALTER TABLE `recettes_classiques`
  MODIFY `id_classique` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sous_theme`
--
ALTER TABLE `sous_theme`
  MODIFY `id_sous_theme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `tech_bases`
--
ALTER TABLE `tech_bases`
  MODIFY `id_tech_bases` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `themes`
--
ALTER TABLE `themes`
  MODIFY `id_theme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `type_plats`
--
ALTER TABLE `type_plats`
  MODIFY `id_type_plat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `FK_IGREDIENTS_type_ingredients` FOREIGN KEY (`id_type_ingre`) REFERENCES `type_ingre` (`id_type_ingre`);

--
-- Contraintes pour la table `join_bio_recette`
--
ALTER TABLE `join_bio_recette`
  ADD CONSTRAINT `join_bio_recette_ibfk_1` FOREIGN KEY (`id_recette`) REFERENCES `recettes` (`id_recette`),
  ADD CONSTRAINT `join_bio_recette_ibfk_2` FOREIGN KEY (`id_bio`) REFERENCES `recettes_bio` (`id_bio`);

--
-- Contraintes pour la table `join_classique_recette`
--
ALTER TABLE `join_classique_recette`
  ADD CONSTRAINT `join_classique_recette_ibfk_1` FOREIGN KEY (`id_classique`) REFERENCES `recettes_classiques` (`id_classique`),
  ADD CONSTRAINT `join_classique_recette_ibfk_2` FOREIGN KEY (`id_recette`) REFERENCES `recettes` (`id_recette`);

--
-- Contraintes pour la table `join_comm_recette`
--
ALTER TABLE `join_comm_recette`
  ADD CONSTRAINT `join_comm_recette_ibfk_1` FOREIGN KEY (`id_comm`) REFERENCES `commentaires` (`id_comm`),
  ADD CONSTRAINT `join_comm_recette_ibfk_2` FOREIGN KEY (`id_recette`) REFERENCES `recettes` (`id_recette`);

--
-- Contraintes pour la table `join_comm_utilisateurs`
--
ALTER TABLE `join_comm_utilisateurs`
  ADD CONSTRAINT `join_comm_utilisateurs_ibfk_1` FOREIGN KEY (`id_comm`) REFERENCES `commentaires` (`id_comm`),
  ADD CONSTRAINT `join_comm_utilisateurs_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `utilisateurs` (`id_user`);

--
-- Contraintes pour la table `join_ingre_recette`
--
ALTER TABLE `join_ingre_recette`
  ADD CONSTRAINT `join_ingre_recette_ibfk_2` FOREIGN KEY (`id_recette`) REFERENCES `recettes` (`id_recette`),
  ADD CONSTRAINT `join_ingre_recette_ibfk_3` FOREIGN KEY (`id_ingre`) REFERENCES `ingredients` (`id_ingre`);

--
-- Contraintes pour la table `join_plat_recette`
--
ALTER TABLE `join_plat_recette`
  ADD CONSTRAINT `join_plat_recette_ibfk_1` FOREIGN KEY (`id_plat`) REFERENCES `plats` (`id_plat`),
  ADD CONSTRAINT `join_plat_recette_ibfk_2` FOREIGN KEY (`id_recette`) REFERENCES `recettes` (`id_recette`);

--
-- Contraintes pour la table `join_sous_theme_recette`
--
ALTER TABLE `join_sous_theme_recette`
  ADD CONSTRAINT `join_sous_theme_recette_ibfk_1` FOREIGN KEY (`id_sous_theme`) REFERENCES `sous_theme` (`id_sous_theme`),
  ADD CONSTRAINT `join_sous_theme_recette_ibfk_2` FOREIGN KEY (`id_recette`) REFERENCES `recettes` (`id_recette`);

--
-- Contraintes pour la table `join_utilisateurs_recette`
--
ALTER TABLE `join_utilisateurs_recette`
  ADD CONSTRAINT `join_utilisateurs_recette_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `utilisateurs` (`id_user`),
  ADD CONSTRAINT `join_utilisateurs_recette_ibfk_2` FOREIGN KEY (`id_recette`) REFERENCES `recettes` (`id_recette`);

--
-- Contraintes pour la table `plats`
--
ALTER TABLE `plats`
  ADD CONSTRAINT `type_plats_plats` FOREIGN KEY (`id_type_plat`) REFERENCES `type_plats` (`id_type_plat`);

--
-- Contraintes pour la table `sous_theme`
--
ALTER TABLE `sous_theme`
  ADD CONSTRAINT `sous_theme_ibfk_1` FOREIGN KEY (`id_theme`) REFERENCES `themes` (`id_theme`);

--
-- Contraintes pour la table `tech_bases`
--
ALTER TABLE `tech_bases`
  ADD CONSTRAINT `tech_bases_ibfk_1` FOREIGN KEY (`id_recette`) REFERENCES `recettes` (`id_recette`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
