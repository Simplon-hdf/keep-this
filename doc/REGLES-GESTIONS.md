# Regles de gestion

## Authentification 
Connexion de l'utilisateur : L'utilisateur doit se connecter avec un identifian e-mail et un mot de passe valide pour accéder à son compte.

Création de compte : Un utilisateur peut créer un compte en fournissant une adresse e-mail valide, un mot de passe sécurisé, et confirmé la validité de sont adresse mail en cliquant sur un lien temporaire.

Mot de passe sécurisé : Le système doit exiger que les utilisateurs créent des mots de passe forts, comprenant une combinaison de lettres, de chiffres et de caractères spéciaux, pour assurer la sécurité des comptes.

Confirmation de mot de passe : Lors de la création d'un compte ou de la modification du mot de passe, l'utilisateur doit saisir le mot de passe deux fois pour confirmer qu'il a été correctement saisi.

Gestion des sessions : Une fois connecté, le compte de l'utilisateur reste connecté pendant une certaine période de temps, après quoi il est automatiquement déconnecté pour des raisons de sécurité.
Déconnexion manuelle : L'utilisateur doit avoir la possibilité de se déconnecter manuellement de son compte à tout moment, en particulier s'il utilise un appareil partagé ou public.

Réinitialisation du mot de passe : En cas d'oubli du mot de passe, l'utilisateur doit avoir la possibilité de réinitialiser son mot de passe en recevant un lien temporaire de réinitialisation par e-mail.

Gestion des tentatives de connexion infructueuses : Le système doit limiter le nombre de tentatives de connexion infructueuses pour prévenir les attaques par force brute et peut bloquer temporairement les comptes après un certain nombre de tentatives infructueuses.

Protection des données sensibles : Toutes les données personnelles et les informations d'authentification des utilisateurs doivent être stockées de manière sécurisée et cryptée pour protéger la confidentialité.

Une fois Authentifié l'utilisateur est rediriger la page qui contient tout ces post-it non triés

# Navigation


## Post-it

* un post-it est composé d'un auteur authentifier par l'application
* un post-it est composé d'une date de création
* un post it est composé d'un texte 
* un post it peut-être associé à un carnet

L'affichage par defaut d'un post-it est limité à un certain nombre de caractère. Une fois séléctionné celui-ci est etendue et de nouvelles intéractions sont possible

* modifier : L'utilisateur peut cliquer sur le texte pour rentrer en mode modification et modifier le texte du post-it (par defaut)
* archiver : Les post-it peuvent être archivés par l'utilisateur s'il souhaite les conserver pour référence future tout en les retirant de l'affichage principal, aidant ainsi à maintenir une interface propre et organisée.
* associer : L'utilisateur peut associer sont post-it à un carnet de beaucoup de manières différentes cf association

* L'utilisateur à la possibilité de filtrer les post-it.
  * non associer (Par defaut)
  * Déja associer
  * archiver
* L'utilisateur à la possibilité de rechercher par mot clé
* L'utilisateur à la possibilité de trier le post-it
  * par date de création
  * Alphabétique

Création d'un nouveau post-it : L'utilisateur à la possibilité de créer un nouveau post-it en intéragissant avec le premier dans la liste qui est une simple zone de texte avec une texte par defaut.

Sauvegarde automatique : Les modifications apportées aux post-it doivent être sauvegardées automatiquement pour éviter toute perte de données en cas de fermeture accidentelle de l'application ou de panne de système.

L'utilisateur à la possibilité de restaurer un post-it archivé, ou de le supprimer définitivement.

## Carnet

* un carnet est composé d'un titre
* un carnet est composé d'une date de création
* un carnet est composé d'un propriétaire
* un carnet peut contenir aucun ou plusieurs post-it

L'utilisateur peut créer un carnet sur la page des carnet en cliquant sur le premier dans la liste et en lui écrivant un titre.
L'utilisateur peut créer un post it dans le carnet en cliquant sur le premier dans le carnet qui est une simple zone de texte avec un texte par defaut.
L'utilisateur peut archiver un carnet 

## association

 ### association automatique

 ### association par recherche

 ### creation d'un nouveau carnet