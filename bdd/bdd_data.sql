--
-- Base de données : `projetr401`
--

--
-- Déchargement des données de la table `apprecier`
--

INSERT INTO `apprecier` (`id_utilisateur`, `id_articles`, `type`) VALUES
(2, 2, 1),
(2, 3, 1),
(2, 4, 0),
(3, 1, 1),
(3, 16, 0),
(3, 4, 1),
(4, 16, 1),
(5, 16, 1),
(5, 1, 1),
(5, 2, 1),
(6, 1, 0),
(6, 2, 0);

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id_articles`, `titre`, `contenu`, `date_de_publication`, `id_utilisateur`) VALUES
(1, 'Les avantages de PHP', 'PHP est un langage de programmation très populaire pour les sites web dynamiques. Voici ses avantages.', '2022-01-01', 2),
(2, 'Les bienfaits de la méditation quotidienne', 'La méditation est une pratique ancienne qui peut apporter de nombreux bienfaits pour la santé mentale et physique. En prenant quelques minutes chaque jour pour méditer, vous pouvez améliorer votre bien-être général et votre qualité de vie.', '2023-03-30', 3),
(3, 'La pratique régulière d\'une activité physique', 'La pratique régulière d\'une activité physique est bénéfique pour la santé physique et mentale. Que ce soit pour perdre du poids, améliorer sa condition physique ou simplement se sentir mieux, l\'exercice peut apporter de nombreux avantages pour la santé.', '2023-03-30', 4),
(4, 'Les bienfaits de la natation', 'La natation est un sport complet qui permet de travailler la plupart des muscles du corps et ameliorer la capacite cardiorespiratoire. ', '2022-01-05', 5),
(16, 'Les avantages de la lecture régulière', 'La lecture régulière est une habitude saine qui peut apporter de nombreux avantages pour la santé mentale et intellectuelle. Que ce soit pour le plaisir, pour se détendre ou pour s\'informer, la lecture est une activité enrichissante qui peut améliorer la qualité de vie.', '2023-03-31', 6);

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id_role`, `description`) VALUES
(1, 'Moderator'),
(2, 'Publisher');

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom_utilisateur`, `mot_de_passe`, `id_role`) VALUES
(1, 'Alice', 'password1', 1),
(2, 'Jacques', 'password2', 2),
(3, 'Louis', 'password3', 2),
(4, 'Jean', 'password4', 2),
(5, 'Louise', 'password5', 2),
(6, 'Elise', 'password6', 2);
COMMIT;