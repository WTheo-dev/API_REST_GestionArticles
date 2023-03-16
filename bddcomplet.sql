-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 16 mars 2023 à 09:52
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `apiarticles`
--

-- --------------------------------------------------------

--
-- Structure de la table `apprécier`
--

DROP TABLE IF EXISTS `apprécier`;
CREATE TABLE IF NOT EXISTS `apprécier` (
  `Id_Utilisateur` int NOT NULL,
  `Id_Articles` int NOT NULL,
  `type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id_Utilisateur`,`Id_Articles`),
  KEY `Id_Articles` (`Id_Articles`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `apprécier`
--

INSERT INTO `apprécier` (`Id_Utilisateur`, `Id_Articles`, `type`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 3, 1),
(4, 4, 0),
(5, 5, 1),
(6, 6, 1),
(1, 1, 0),
(2, 4, 1),
(3, 6, 0);

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `Id_Articles` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(50) DEFAULT NULL,
  `Contenu` text,
  `date_de_publication` date DEFAULT NULL,
  `Id_Utilisateur` int NOT NULL,
  PRIMARY KEY (`Id_Articles`),
  KEY `Id_Utilisateur` (`Id_Utilisateur`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`Id_Articles`, `titre`, `Contenu`, `date_de_publication`, `Id_Utilisateur`) VALUES
(1, 'Les avantages de PHP', 'PHP est un langage de programmation très populaire pour les sites web dynamiques. Voici ses avantages.', '2022-01-01', 1),
(2, 'Comment créer un site web en HTML', 'Apprendre à créer un site web de base en HTML en quelques étapes simples.', '2022-02-02', 2),
(3, 'Les meilleurs outils de développement web', 'Découvrez les outils de développement web les plus populaires et leurs fonctionnalités clés.', '2022-03-03', 3),
(4, 'Les bienfaits de la natation', 'La natation est un sport complet qui permet de travailler la plupart des muscles du corps et améliorer la capacité cardiorespiratoire. ', '2022-01-05', 4),
(5, 'Comment faire du pain maison', 'Faire son propre pain maison est facile et amusant. Il suffit de suivre quelques étapes simples pour obtenir un pain frais et délicieux.', '2022-02-20', 5),
(6, 'Les meilleurs films d action', 'Les films d action sont souvent remplis de cascades spectaculaires et d effets spéciaux incroyables. Voici une liste des meilleurs films d action à ne pas manquer. ', '2022-03-05', 6);

-- --------------------------------------------------------

--
-- Structure de la table `rôle`
--

DROP TABLE IF EXISTS `rôle`;
CREATE TABLE IF NOT EXISTS `rôle` (
  `Id_Rôle` int NOT NULL AUTO_INCREMENT,
  `Description` text,
  PRIMARY KEY (`Id_Rôle`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `rôle`
--

INSERT INTO `rôle` (`Id_Rôle`, `Description`) VALUES
(1, 'Moderator'),
(2, 'Publisher');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `Id_Utilisateur` int NOT NULL AUTO_INCREMENT,
  `nomUtilisateur` varchar(50) DEFAULT NULL,
  `motdepasse` varchar(50) DEFAULT NULL,
  `Id_Rôle` int NOT NULL,
  PRIMARY KEY (`Id_Utilisateur`),
  KEY `Id_Rôle` (`Id_Rôle`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`Id_Utilisateur`, `nomUtilisateur`, `motdepasse`, `Id_Rôle`) VALUES
(1, 'Alice', 'password1', 1),
(2, 'Jacques', 'password2', 2),
(3, 'Louis', 'password3', 1),
(4, 'Jean', 'password4', 1),
(5, 'Louise', 'password5', 2),
(6, 'Elise', 'password6', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
