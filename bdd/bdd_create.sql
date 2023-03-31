-- Création d'un utilisateur "utilisateur" avec pour mot de passe "password"
-- Création de la base de données "projetR401"

CREATE USER IF NOT EXISTS 'utilisateur'@'localhost' IDENTIFIED BY 'password';
CREATE DATABASE IF NOT EXISTS projetR401
CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
GRANT ALL PRIVILEGES ON utilisateur.* TO 'utilisateur'@'localhost';
FLUSH PRIVILEGES;

-- Création des différentes TABLES

--
-- Base de données : `projetr401`
--

-- --------------------------------------------------------

--
-- Structure de la table `apprecier`
--

DROP TABLE IF EXISTS `apprecier`;
CREATE TABLE IF NOT EXISTS `apprecier` (
  `id_utilisateur` int NOT NULL,
  `id_articles` int NOT NULL,
  `type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_utilisateur`,`id_articles`),
  KEY `id_articles` (`id_articles`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id_articles` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(50) DEFAULT NULL,
  `contenu` text,
  `date_de_publication` date DEFAULT NULL,
  `id_utilisateur` int NOT NULL,
  PRIMARY KEY (`id_articles`),
  KEY `id_utilisateur` (`id_utilisateur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id_role` int NOT NULL AUTO_INCREMENT,
  `description` text,
  PRIMARY KEY (`id_role`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` int NOT NULL AUTO_INCREMENT,
  `nom_utilisateur` varchar(50) DEFAULT NULL,
  `mot_de_passe` varchar(50) DEFAULT NULL,
  `id_role` int NOT NULL,
  PRIMARY KEY (`id_utilisateur`),
  KEY `id_role` (`id_role`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;