INSERT INTO Utilisateur (nomUtilisateur, motdepasse, rôle)
VALUES ('user1', 'password1', 'moderator'),
       ('user2', 'password2', 'publisher'),
       ('user3', 'password3', 'publisher'),
       ('user4', 'password4', 'moderator'),
       ('user5', 'password5', 'publisher');

INSERT INTO Articles (titre, Contenu, date_de_publication, nbLike, nbDislike, Id_Utilisateur)
VALUES ('Article 1', 'Contenu de l\'article 1', '2022-01-01', 10, 2, 1),
       ('Article 2', 'Contenu de l\'article 2', '2022-02-02', 20, 5, 1),
       ('Article 3', 'Contenu de l\'article 3', '2022-03-03', 30, 8, 2),
       ('Article 4', 'Contenu de l\'article 4', '2022-04-04', 40, 10, 3),
       ('Article 5', 'Contenu de l\'article 5', '2022-05-05', 50, 15, 4);
       

INSERT INTO Like_DislikeArticles (type, Id_Utilisateur, Id_Articles)
VALUES ('like', 1, 1),
       ('like', 2, 1),
       ('dislike', 3, 1),
       ('like', 2, 2),
       ('dislike', 3, 2),
       ('like', 1, 3),
       ('like', 3, 3),
       ('dislike', 1, 4),
       ('dislike', 2, 4),
       ('dislike', 5, 5);