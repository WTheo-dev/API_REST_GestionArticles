INSERT INTO Role (Description) VALUES ('Moderator');
INSERT INTO Role (Description) VALUES ('Publisher');

INSERT INTO Utilisateur (nomUtilisateur, motdepasse, Id_Role) VALUES ('moderator', 'password1', 1);
INSERT INTO Utilisateur (nomUtilisateur, motdepasse, Id_Role) VALUES ('publisher', 'password2', 2);

INSERT INTO Articles (titre, Contenu, date_de_publication, Id_Utilisateur) VALUES ('Bienvenue sur notre site', 'Bienvenue sur notre site web !', '2022-01-01', 1);
INSERT INTO Articles (titre, Contenu, date_de_publication, Id_Utilisateur) VALUES ('Comment utiliser phpMyAdmin', 'Voici un tutoriel pour phpMyAdmin', '2022-01-02', 2);
INSERT INTO Articles (titre, Contenu, date_de_publication, Id_Utilisateur) VALUES ('Les dernières tendances', 'Voici les dernières tendances en 2022', '2022-01-03', 1);

INSERT INTO Like_DislikeArticles (type, Id_Utilisateur, Id_Articles) VALUES ('like', 1, 1);
INSERT INTO Like_DislikeArticles (type, Id_Utilisateur, Id_Articles) VALUES ('like', 2, 1);
INSERT INTO Like_DislikeArticles (type, Id_Utilisateur, Id_Articles) VALUES ('like', 1, 2);
INSERT INTO Like_DislikeArticles (type, Id_Utilisateur, Id_Articles) VALUES ('dislike', 2, 2);
INSERT INTO Like_DislikeArticles (type, Id_Utilisateur, Id_Articles) VALUES ('like', 1, 3);
INSERT INTO Like_DislikeArticles (type, Id_Utilisateur, Id_Articles) VALUES ('dislike', 2, 3);
