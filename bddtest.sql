INSERT INTO Rôle (id1_moderator, id2_publisher)
VALUES ('JohnModerator', 'JanePublisher');

INSERT INTO Utilisateur (nomUtilisateur, motdepasse, Id_Rôle)
VALUES ('JaneDoe', 'motdepasse', 1);

INSERT INTO Articles (titre, Contenu, date_de_publication, nbLike, nbDislike, Id_Utilisateur)
VALUES ('Nouvelles tendances de la mode', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pulvinar tincidunt sapien, et rhoncus nunc bibendum ac. Quisque maximus ligula purus, nec ultrices ex consequat vitae. ', '2023-03-10', 10, 2, 1);

INSERT INTO Like_DislikeArticles (type, Id_Utilisateur, Id_Articles)
VALUES (1, 1, 1); -- utilisateur JaneDoe a aimé l'article

INSERT INTO Like_DislikeArticles (type, Id_Utilisateur, Id_Articles)
VALUES (0, 2, 1); -- utilisateur JohnDoe a pas aimé l'article
