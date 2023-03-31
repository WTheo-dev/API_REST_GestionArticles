-- Création d'un utilisateur "utilisateur" avec pour mot de passe "password"
-- Création de la base de données "projetR401"

CREATE USER IF NOT EXISTS 'utilisateur'@'localhost' IDENTIFIED BY 'password';
CREATE DATABASE IF NOT EXISTS projetR401
CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
GRANT ALL PRIVILEGES ON projetR401 .* TO 'utilisateur'@'localhost';
FLUSH PRIVILEGES;
