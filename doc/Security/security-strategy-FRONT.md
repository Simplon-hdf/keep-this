# Sécurisation du Front-End

## Introduction

Nous avons choisi de développer le Front-End de notre application Keep-This avec React et TypeScript. La sécurisation de cette partie est cruciale pour protéger les données des utilisateurs et garantir la sécurité des interactions. En suivant les recommandations de l'ANSSI et en se reposant sur certains grands principes de sécurisation, nous assurerons une protection robuste contre les menaces potentielles.

### Grands principes de Sécurisation

***

#### Défense en profondeur

Le principe de défense en profondeur implique l'implémentation de plusieurs couches de sécurité. Chaque couche offre une protection supplémentaire contre les menaces potentielles, garantissant ainsi que la compromission d'une couche ne compromet pas l'ensemble du système.

#### Réduction de la surface d'attaque

La réduction de la surface d'attaque consiste à minimiser le nombre de points d'entrée possibles pour les attaquants. Cela inclut la limitation des fonctionnalités accessibles au public et la sécurisation des interfaces exposées.

#### Moindre privilège

Le principe du moindre privilège consiste à donner aux utilisateurs et aux processus uniquement les permissions nécessaires pour accomplir leurs tâches. Cela réduit les risques en limitant les actions que peuvent effectuer des entités potentiellement compromises.

### Menaces Identifiées

***

Nous avons identifié certaines menaces potentielles que le Front-End de notre application pourrait affronter.

#### Injections de code

Les injections de code, telles que les injections SQL et les injections de commande, peuvent permettre à des attaquants d'exécuter des commandes malveillantes.

#### Attaques XSS (Cross-Site Scripting)

Les attaques XSS permettent aux attaquants d'injecter des scripts malveillants dans les pages web, compromettant la sécurité des utilisateurs.

#### Détournement de sessions

Les sessions non sécurisées peuvent être détournées, permettant à des attaquants de prendre le contrôle de comptes utilisateur.

#### Attaques de Downgrade

Elles permettent de forcer un protocole sécurisé à basculer vers une version moins sécurisée, permettant ainsi aux attaquants de lire ou modifier les communications.

#### Attaques Man-in-the-Middle (MITM)

Attaques où un attaquant intercepte et altère la communication entre deux parties.

### Recommandations ANSSI à appliquer

***

Voici les recommandations de l’ANSSI pour la mise en place d’un site web que nous aimerions implémenter, afin de parer à ces éventuelles attaques.

**R1 - Mettre en œuvre TLS à l'état de l'art**
Mettre en œuvre les recommandations de sécurité relatives à TLS pour garantir la confidentialité, l'intégrité et l'authenticité des informations échangées.

**R2 - Mettre en œuvre HSTS**
Mettre en œuvre HTTP Strict Transport Security (HSTS) afin de limiter les risques d’attaque de type Man-In-The-Middle dus à des accès non sécurisés générés par les utilisateurs ou par un attaquant.

**R4 - Utiliser l'API DOM à bon escient**
Encourager l'utilisation sécurisée de l'API DOM pour prévenir les manipulations malveillantes.

**R5 - Dissocier clairement la composition des pages web**
Séparer la logique de présentation de la logique métier pour limiter les possibilités d'injection de contenu malveillant.

**R6 - Expliciter la nature d’une ressource avec l’en-tête Content-Type**
Utiliser correctement les en-têtes HTTP pour définir les types de contenu et prévenir certaines vulnérabilités.

**R7 - Vérifier l'échappement des contenus inclus**
S'assurer que les contenus dynamiques inclus dans le DOM sont correctement échappés pour éviter les exécutions de scripts malveillants.

**R8 - Vérifier la conformité des données issues de sources externes**
Valider et vérifier toutes les données provenant de sources externes avant leur traitement.

**R10 - Proscrire l'usage de constructions basées sur l'évaluation de code**
Éviter les constructions basées sur l'évaluation de code (comme la fonction **_eval_**) pour prévenir les exécutions de code malveillant.

**R13, R14, R15, R16, R17 - Mettre en œuvre Content Security Policy (CSP)**
Implémenter CSP via l’en-tête HTTP pour réduire les risques de XSS et contrôler les sources de contenu. Restreindre les contenus aux ressources fiables, interdire les contenus inline, définir la directive default-src et utiliser CSP contre le clickjacking avec `frame-ancestors`.

**R21 - Définir la stratégie de construction de l’en-tête `Referer`**
L'utilisation de Referrer Policy est mentionnée pour contrôler la transmission de l'en-tête `Referer`.

**R26, R31, R32, R33 - Sécurisation des Cookies**
Ne pas stocker d'informations sensibles dans les cookies. Ajouter le flag `Secure` aux cookies utilisés avec HTTPS. Définir une stratégie stricte d’envoi des cookies en cross-site avec l’attribut `SameSite`. Appliquer les mêmes mesures pour les cookies de session.

### Mesures de Sécurisation

***

#### Validation et assainissement des entrées

Pour empêcher les injections de code, nous allons mettre en place des mécanismes de validation et d'assainissement des entrées. Cela inclut :

- Nettoyer les données d'entrée pour supprimer les contenus dangereux.
- Utiliser des schémas de validation pour vérifier les types, formats et contraintes des données.
- Implémenter une validation des entrées à plusieurs niveaux (côté client et côté serveur).
- L’utilisation de TypeScript, qui assure un typage statique et prévient donc les erreurs de manipulation de données. Cela réduit les risques d'exploitation de failles par des données malformées ou inattendues.

#### Prévention des Attaques XSS

Pour prévenir les attaques XSS, nous allons mettre en œuvre les mesures suivantes :

- Échapper automatiquement les données insérées dans le DOM. Cela est possible grâce à React, qui le fait via JSX.
- Mettre en place des Content Security Policies (CSP) strictes pour restreindre les sources de contenu.
- Utiliser des en-têtes HTTP sécurisés.
- Utiliser des composants immuables, ce qui encourage une gestion claire et prévisible de l'état et des données et rend par conséquent plus difficile l'injection de code malveillant par des voies détournées (grâce à React).
- Le Virtual DOM inclus dans React permet des mises à jour plus sûres et efficaces du DOM réel, réduisant de fait les risques de vulnérabilités associées à des manipulations DOM directes.

#### Gestion des Sessions et de l'Authentification

Pour sécuriser les sessions et l'authentification, nous allons :

- Utiliser des **tokens** de session **sécurisés** stockés dans des cookies HttpOnly.
- Configurer une **durée de vie limitée** pour les **tokens** et les renouveler automatiquement.
- Mettre en place des **politiques de mots de passe** forts incluant des exigences de complexité (lettres majuscules et minuscules, chiffres, caractères spéciaux) et une longueur minimale de 8 caractères.
- Utiliser le **hashage SHA256** avec **salage** pour le stockage sécurisé des mots de passe.
- Exiger que les nouveaux mots de passe soient **différents** des précédents lors de la demande de **réinitialisation de mot de passe**.
- Bloquer la session d’authentification pendant **15 minutes** après **trois tentatives** de connexion infructueuses .
- Envoyer des **notifications** par email en cas d'**activités suspectes** détectées sur les comptes utilisateur.
- **Limiter les sessions** à une durée de validité de **deux semaines** avec l'obligation de se reconnecter pour les actions sensibles (paiement, changement de mot de passe).
- Utiliser des **JSON Web Tokens (JWT)** pour la gestion des sessions et des cookies sécurisés. Les JWT seront utilisés pour authentifier les requêtes API, garantissant que seules les requêtes autorisées accèdent aux ressources protégées.

#### Sécurisation des Formulaires

Pour garantir la validité des données, nous appliquerons des **méthodes de nettoyage** à la fois sur le Front-End et l'API (Back-End), nettoyant toutes les données saisies pour prévenir les injections SQL et XSS. De plus, nous utiliserons des **tokens CSRF uniques** par session et par formulaire. Ces tokens seront vérifiés à chaque soumission de formulaire pour garantir qu'ils correspondent aux tokens générés par le serveur, empêchant ainsi les **attaques CSRF**.

#### Politiques de Sécurité HTTP

Pour renforcer la sécurité de l'application web, nous mettrons en place les politiques suivantes :

- **Same-Origin Policy (SOP)** : Implémenter une politique de sécurité pour restreindre les interactions entre différents sites web. Elle permet de limiter les actions que peuvent effectuer des scripts provenant d'une origine différente de celle du document actuellement consulté.
- **Referrer-Policy** : Nous configurerons une **referrer-policy** stricte pour limiter les informations de référent envoyées lors des requêtes HTTP (dans l’en-tête **_referer_**), réduisant ainsi les risques de fuite d'informations sensibles.
- **HTTP Strict Transport Security (HSTS)** : Nous activerons le mécanisme HSTS pour forcer les navigateurs à utiliser uniquement HTTPS, ce qui empêche les attaques de downgrade et les attaques man-in-the-middle.
- **Cross-Origin Resource Sharing (CORS)** : CORS est un mécanisme qui permet à une page web de demander des ressources (comme des API) d'une origine différente de la sienne. Cela se fait en ajoutant des en-têtes HTTP qui permettent aux serveurs de déclarer les origines autorisées à accéder aux ressources.
- **Content Security Policy (CSP)** : CSP est un mécanisme de sécurité qui aide à prévenir diverses attaques, comme les attaques XSS, en définissant quelles sources de contenu sont approuvées pour être chargées et exécutées par le navigateur. On pourra alors créer une liste blanche d'origines sûres pour les scripts, les styles, les images, etc.
- **Subresource Integrity (SRI)** : SRI est une fonctionnalité de sécurité qui permet aux navigateurs de vérifier que les ressources qu'ils récupèrent (comme les scripts et les styles) n'ont pas été altérées. Cela se fait en comparant un hash cryptographique de la ressource attendue avec celui de la ressource téléchargée. Cela protège contre les modifications malveillantes des ressources externes.

#### Journalisation / Rapport des Événements

Nous intégrerons un système de journalisation pour suivre et enregistrer les événements importants (erreurs, actions effectuées) afin de détecter les comportements suspects et diagnostiquer les problèmes.

#### Mise à Jour et Gestion des Patches

Pour maintenir la sécurité de notre application, nous allons :

- Mettre à jour régulièrement React, TypeScript et les bibliothèques tierces pour appliquer les patches de sécurité.
- Utiliser des outils pour automatiser les mises à jour des dépendances.
- Tester les mises à jour dans un environnement de staging avant de les déployer en production.
- Utiliser des outils de surveillance des vulnérabilités pour détecter et corriger rapidement les failles de sécurité.

## Conclusion

En appliquant ces mesures de sécurité pour la partie Front-End de notre application, nous assurons une protection robuste contre les menaces potentielles. Cette stratégie sera continuellement réévaluée et mise à jour pour répondre aux nouvelles exigences et aux évolutions technologiques.
