INSERT INTO role (Id_Role, Description) VALUES
(1, 'Moderator'),
(2, 'Publisher');

INSERT INTO utilisateur (Id_Utilisateur, nomUtilisateur, motdepasse, Id_Role) VALUES
(1, 'Alice', 'password1', 1),
(2, 'Jacques', 'password2', 2),
(3, 'Louis', 'password3', 1),
(4, 'Jean', 'password4', 1)
(5, 'Louise', 'password5'2)
(6, 'Elise', 'password6',2);

INSERT INTO articles (Id_Articles, titre, Contenu, date_de_publication, Id_Utilisateur) VALUES
(1, 'Titre de l''article 1', 'Contenu de l''article 1', '2022-01-01', 1),
(2, 'Titre de l''article 2', 'Contenu de l''article 2', '2022-02-02', 2),
(3, 'Titre de l''article 3', 'Contenu de l''article 3', '2022-03-03', 3);

INSERT INTO like_dislikearticles (Id_Like_DislikeArticles, type, Id_Utilisateur, Id_Articles) VALUES
(1, 2, 1, 1),
(2, 2, 2, 1),
(3, 1, 3, 1),
(4, 2, 1, 2),
(5, 0, 2, 2),
(6, 1, 3, 2),
(7, 0, 1, 3),
(8, 2, 2, 3),
(9, 1, 3, 3);