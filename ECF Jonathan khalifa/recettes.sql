-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  sam. 01 sep. 2018 à 14:12
-- Version du serveur :  10.1.33-MariaDB
-- Version de PHP :  7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ecf3`
--

-- --------------------------------------------------------

--
-- Structure de la table `recettes`
--

CREATE TABLE `recettes` (
  `id_recettes` int(11) NOT NULL,
  `titre` varchar(25) NOT NULL,
  `niveau_difficulte` varchar(25) NOT NULL,
  `tps_prep_total` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `recettes`
--

INSERT INTO `recettes` (`id_recettes`, `titre`, `niveau_difficulte`, `tps_prep_total`) VALUES
(1, 'pizza 4 fromages', '', ''),
(2, 'salade d\'endives', '', ''),
(3, 'lapin à la moutarde', '', ''),
(4, 'boeuf bourguignon', '', ''),
(5, 'croque monsieur', '', ''),
(6, 'paris brest', '', ''),
(7, 'andouillette grillée', '', ''),
(8, 'pâtes au beurre', '', ''),
(9, 'soupe forestière', '', ''),
(10, 'crème brulée', '', ''),
(11, 'tapenade', '', ''),
(12, 'chili con carne', '', ''),
(13, 'brochettes de poulet', '', ''),
(14, 'oeufs mimosa', '', ''),
(15, 'purée de pommes de terre', '', ''),
(16, 'pommes daufines', '', ''),
(17, 'sorbet coco', '', ''),
(18, 'endives au jambon', '', ''),
(19, 'confit de canard', '', ''),
(20, 'cassoulet', '', ''),
(21, 'quiche loraine', '', ''),
(22, 'tarte aux poirreaux', '', ''),
(23, 'porc caramel', '', ''),
(24, 'saucisse de toulouse gril', '', ''),
(25, 'épinards à la crème', '', ''),
(26, 'mousse au chocolat', '', ''),
(27, 'sauce bernaise', '', ''),
(28, 'tequila sunrise', '', ''),
(29, 'tourgoule', '', ''),
(30, 'paté de campagne', '', ''),
(31, 'tacos al pastor', '', ''),
(32, 'guacamole', '', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `recettes`
--
ALTER TABLE `recettes`
  ADD PRIMARY KEY (`id_recettes`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `recettes`
--
ALTER TABLE `recettes`
  MODIFY `id_recettes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
