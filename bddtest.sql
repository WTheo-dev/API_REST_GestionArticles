INSERT INTO rôle (Id_Rôle, Description) VALUES
(1, 'Moderator'),
(2, 'Publisher');

INSERT INTO utilisateur (Id_Utilisateur, nomUtilisateur, motdepasse, Id_Rôle) VALUES
(1, 'Alice', 'password1', 1),
(2, 'Jacques', 'password2', 2),
(3, 'Louis', 'password3', 1),
(4, 'Jean', 'password4', 1),
(5, 'Louise', 'password5', 2),
(6, 'Elise', 'password6', 2);

INSERT INTO articles (Id_Articles, titre, Contenu, date_de_publication, Id_Utilisateur) VALUES
(1, 'Les avantages de PHP', 'PHP est un langage de programmation très populaire pour les sites web dynamiques. Voici ses avantages.', '2022-01-01', 1),
(2, 'Comment créer un site web en HTML', 'Apprendre à créer un site web de base en HTML en quelques étapes simples.', '2022-02-02', 2),
(3, 'Les meilleurs outils de développement web', 'Découvrez les outils de développement web les plus populaires et leurs fonctionnalités clés.', '2022-03-03', 3),
(4, 'Les bienfaits de la natation', 'La natation est un sport complet qui permet de travailler la plupart des muscles du corps et améliorer la capacité cardiorespiratoire. ', '2022-01-05', 4),
(5, 'Comment faire du pain maison','Faire son propre pain maison est facile et amusant. Il suffit de suivre quelques étapes simples pour obtenir un pain frais et délicieux.', '2022-02-20', 5),
(6, 'Les meilleurs films d action','Les films d action sont souvent remplis de cascades spectaculaires et d effets spéciaux incroyables. Voici une liste des meilleurs films d action à ne pas manquer. ', '2022-03-05', 6);

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