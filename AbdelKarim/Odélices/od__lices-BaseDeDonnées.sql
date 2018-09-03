-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 31 août 2018 à 19:28
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
-- Base de données :  `odélices`
--

-- --------------------------------------------------------

--
-- Structure de la table `actualités`
--

CREATE TABLE `actualités` (
  `Conseils` int(11) NOT NULL,
  `Evenements` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `magazines`
--

CREATE TABLE `magazines` (
  `Distributions` int(11) NOT NULL,
  `Numéros` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `recettes`
--

CREATE TABLE `recettes` (
  `ID` int(50) NOT NULL,
  `Titre` varchar(150) COLLATE utf8_bin NOT NULL,
  `Contenus` text COLLATE utf8_bin NOT NULL,
  `Ingrédients` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `recettes`
--

INSERT INTO `recettes` (`ID`, `Titre`, `Contenus`, `Ingrédients`) VALUES
(0, 'Pâtes Bolognaises', 'Faire Bouillir l\'eau 10 minutes dans une casserole.', 'Sauce Tomate\r\nBeurre'),
(0, 'Petit Poids', 'Légumes frais', 'Petit Poids\r\nBeurre\r\nSauce ');

-- --------------------------------------------------------

--
-- Structure de la table `themes`
--

CREATE TABLE `themes` (
  `Pays` int(11) NOT NULL,
  `Origines` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
