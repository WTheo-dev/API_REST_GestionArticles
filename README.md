# API_REST_GestionArticles

## Identifiant :

#### Moderateur
```
  Login :  Alice   
  Password : password1
```
#### Publisher
```
  Login : Jacques   
  Password : password2
```
 ## URLs :
 ```
 localhost/ProjetR401/serveurToken
 localhost/ProjetR401/serveurApplication
 localhost/ProjetR401/likeDislikeArticle
 ```
 ## Méthodes :
 ##### Connexion 
 ```
 POST
  localhost/ProjetR401/serveurToken
 ```
 ```json
 {
   "login" : "Jacques",
   "password" : "password2"
 }
 ```
 
 ##### Modification d'un article 
 ```
 PUT
  http://localhost/ProjetR401/serveurApplication&id=<saisir l'id de l'article à modifier>
 ```
 ```json
 {
    "titre" : "Test de la modification",
    "contenu" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse                      cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia desesqdsqsdqrunt mollit anim id est                  laborum."
 }
 ```
 ##### Suppression d'un article 
 ```
 DELETE
  http://localhost/ProjetR401/serveurApplication&id=<saisir l'id de l'article à modifier>
 ```
 ##### Ajout d'un article 
 ```
 POST
  http://localhost/ProjetR401/serveurApplication
 ```
 ```json
 {
    "titre" : "Test de la publication",
    "contenu" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
 }
 ```
 ##### Ajout d'un like
 ###### Un like est représenté par un 1 alors qu'un dislike par un 0
 ```
 POST
  localhost/ProjetR401/likeDislikeArticle?id=<saisir l'id de l'article à modifier>
 ```
 ###### Dislike : 
 ```json
 {
    "like" : "0"
 }
 ```
 ###### Like : 
 ```json
 {
    "like" : "1"
 }
 ```
 
 
 
