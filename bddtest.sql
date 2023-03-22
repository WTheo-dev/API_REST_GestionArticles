INSERT INTO role (id_role, description) VALUES
(1, 'Moderator'),
(2, 'Publisher');

INSERT INTO utilisateur (id_Utilisateur, nomutilisateur, motdepasse, id_Role) VALUES
(1, 'Alice', 'password1', 1),
(2, 'Jacques', 'password2', 2),
(3, 'Louis', 'password3', 1),
(4, 'Jean', 'password4', 1),
(5, 'Louise', 'password5', 2),
(6, 'Elise', 'password6', 2);

INSERT INTO articles (id_articles, titre, contenu, date_de_publication, id_atilisateur) VALUES
(1, 'Les avantages de PHP', 'PHP est un langage de programmation très populaire pour les sites web dynamiques. Voici ses avantages.', '2022-01-01', 1),
(2, 'Comment creer un site web en HTML', 'Apprendre à creer un site web de base en HTML en quelques etapes simples.', '2022-02-02', 2),
(3, 'Les meilleurs outils de developpement web', 'Decouvrez les outils de developpement web les plus populaires et leurs fonctionnalites cles.', '2022-03-03', 3),
(4, 'Les bienfaits de la natation', 'La natation est un sport complet qui permet de travailler la plupart des muscles du corps et ameliorer la capacite cardiorespiratoire. ', '2022-01-05', 4),
(5, 'Comment faire du pain maison','Faire son propre pain maison est facile et amusant. Il suffit de suivre quelques etapes simples pour obtenir un pain frais et delicieux.', '2022-02-20', 5),
(6, 'Les meilleurs films d action','Les films d action sont souvent remplis de cascades spectaculaires et d effets speciaux incroyables. Voici une liste des meilleurs films d action à ne pas manquer. ', '2022-03-05', 6);

INSERT INTO apprecier (id_utilisateur, id_articles, type) VALUES
(1, 1, 1),
(2, 1, 0),
(3, 1, 1),
(4, 1, 0),
(5, 1, 1),
(6, 1, 1),
(1, 2, 0),
(2, 2, 1),
(3, 2, 0),
(4, 2, 1),
(5, 2, 1),
(6, 2, 0),
(1, 3, 1),
(2, 3, 0),
(3, 3, 0),
(4, 3, 1),
(5, 3, 1),
(6, 3, 0),
(1, 4, 0),
(2, 4, 1),
(3, 4, 1),
(4, 4, 0),
(5, 4, 1),
(6, 4, 1),
(1, 5, 1),
(2, 5, 1),
(3, 5, 0),
(4, 5, 1),
(5, 5, 0),
(6, 5, 1),
(1, 6, 0),
(2, 6, 1),
(3, 6, 1),
(4, 6, 0),
(5, 6, 0),
(6, 6, 1);
