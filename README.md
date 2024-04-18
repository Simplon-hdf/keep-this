![GitHub contributors](https://img.shields.io/github/contributors/Simplon-hdf/keep-this?style=for-the-badge)
![GitHub forks](https://img.shields.io/github/forks/Simplon-hdf/keep-this?style=for-the-badge)
![GitHub stars](https://img.shields.io/github/stars/Simplon-hdf/keep-this?style=for-the-badge)
![GitHub issues](https://img.shields.io/github/issues/Simplon-hdf/keep-this?style=for-the-badge)
![GitHub license](https://img.shields.io/github/license/Simplon-hdf/keep-this?style=for-the-badge)

<h1 align="center">KEEP THIS</h1>


## Sommaire
- [Checklist](##Checklist)
- [Introduction](##Introduction)
- [Utilisation](##utilisation)
- [Contribuer](##contribuer)
- [Technologies Utilisées](##Technologies Utilisées)

## :writing_hand: Checklist

- [ ] **Choix de la méthodologie (Agile)**
- [ ] **Créer un repo Github**
- [ ] **Créer la structure du repo (Best practice)**

  - Dossier
    - [ ] [.config](.config/)
    - [ ] [dep](dep/)
    - [ ] [doc](doc/)
    - [ ] [res](res/)
    - [ ] [samples](samples/)
    - [ ] [tools](tools/)
    - [ ] [build](build/)
    - [ ] [test](test/)
  - Fichier
    - [ ] [LICENCE.md](LICENCE.md)
    - [ ] [README.md](README.md)
    - [ ] [.gitattributes](.gitattributes)
    - [ ] [.gitignore](.gitignore)
    - [ ] [.gitmodules](.gitmodules)
    - [ ] [.dockerignore](.dockerignore)

- [ ] **Mise en place du Readme**
- [ ] **[Analyse des besoins]** (doc/analyse-besoin.md)
- [ ] **Spécification fonctionnelle**
  - [ ] [Règle de gestion](doc/regles-gestions.md)
  - [ ] [UML](doc/uml/)
    - [ ] [Diagramme d'activité](doc/uml/activite.md)
    - [ ] [Use case](doc/uml/use-case.md)
    - [ ] [Diagramme de séquence](doc/uml/sequence.md)
    - [ ] [Diagramme de classe](doc/uml/classe.md)
  - [ ] [Merise](doc/Merise/)
    - [ ] [MCD](doc/Merise/MCD.md)
    - [ ] [MLD](doc/Merise/MLD.md)
    - [ ] [MPD](doc/Merise//MPD.md)
  - [ ] [RBAC](doc/RBAC.md)
- [ ] **[Benchmark]**(doc/Benchmark/)
	- [Framework Front-End](doc/Benchmark/front-end-frameworks.md)
	- [Framework Back-End](doc/Benchmark/back-end-frameworks.md)
	- [ORM](doc/Benchmark/orm.md)
	- [Questions_globales](doc/Benchmark/questions-globales.md)
- [ ] **Epic**
  - [ ] User Story
  - [ ] Product backlog (Tâches)
- [ ] **Jira**
- [ ] **Rituels agiles**

  - [ ] Sprint planning meeting
  - [ ] Stand up meeting
  - [ ] Sprint retrospective
  - [ ] Sprint Review

- [ ] **Démarrer les sprints**


## :book: Introduction

Dans le cadre du passage de titre en tant que concepteur et développeur d'applications avec Simplon Haut-de-France, nous sommes amenés à réaliser un projet fil rouge. 

Notre projet a pour objectif de réaliser une application de prise de notes rapide et intuitive , **Keep-This**.  

L'application permet aux utilisateurs de prendre des notes rapidement et de les organiser de manière efficace. Elle offre une interface utilisateur intuitive et des fonctionnalités de gestion de notes pour aider les utilisateurs à rester organisés et productifs. 

Tout au long de ce projet, nous mettrons en pratique nos compétences en conception, développement et déploiement d'applications pour créer une solution de prise de notes innovante et fonctionnelle.
 
### :handshake: L'équipe

- Kevin: Product Owner

Le Product Owner est responsable de la vision du produit et de la définition des fonctionnalités à développer. Il travaille en étroite collaboration avec les parties prenantes pour comprendre les besoins des utilisateurs et prioriser le backlog du produit en conséquence. Le Product Owner veille à ce que l'équipe de développement travaille sur les fonctionnalités les plus pertinentes et les plus précieuses pour les utilisateurs.

- Valérie : Tech Lead

Le Tech Lead est chargé de superviser l'aspect technique du projet. Il guide l'architecture, les choix technologiques et les meilleures pratiques de développement. Le Tech Lead s'assure que l'équipe de développement suit les normes de codage, maintient la qualité du code et résout efficacement les problèmes techniques qui surviennent pendant le développement.

- Aurore: Scrum Master

Le Scrum Master est le facilitateur de l'équipe et le gardien de la méthodologie Scrum. Il aide l'équipe à comprendre et à adopter les principes et les valeurs de Scrum, tout en facilitant les différentes cérémonies Scrum telles que les réunions de planification, de revue et de rétrospective. Le Scrum Master élimine les obstacles et favorise un environnement de travail collaboratif, transparent et axé sur l'amélioration continue.


Bien que tous les membres de l'équipe soient des développeurs, les rôles de Product Owner, Tech Lead et Scrum Master sont définis pour assurer le bon fonctionnement et la réussite du projet.


### Méthodologie de développement

Keep-This est développé selon la méthodologie Scrum. Nous utilisons Jira comme outil de gestion de projet pour planifier, suivre et collaborer efficacement tout au long du cycle de développement. 


## :dart: Présentation du projet

Notre application révolutionnaire repose sur le concept simple mais efficace de carnets de post-it numériques, offrant ainsi une solution innovante aux défis auxquels sont confrontés les utilisateurs dans leur gestion de l'information. Chaque post-it numérique, véritablement polyvalent, agit comme une unité d'information autonome, permettant aux utilisateurs de capturer rapidement leurs idées et leurs notes, tout en conservant la flexibilité d'une organisation personnalisée.

En répondant au besoin de rapidité et de facilité dans la prise de notes, notre application émule l'expérience familière du post-it physique, mais avec les avantages supplémentaires de la technologie numérique. Les utilisateurs peuvent créer, éditer et organiser leurs post-it dans des carnets virtuels, leur offrant ainsi une méthode intuitive et pratique pour gérer leurs informations.

De plus, notre application adresse le défi de la gestion organisée des notes en permettant aux utilisateurs de regrouper leurs post-it dans des carnets thématiques. Cette fonctionnalité offre une structure logique pour organiser les informations en fonction des projets, des tâches ou des catégories, facilitant ainsi la recherche et la récupération ultérieure des données.

Enfin, notre application assure la sécurité et la sauvegarde des données en stockant les carnets de post-it dans le cloud. Cela garantit que les informations importantes ne sont jamais perdues et restent accessibles à tout moment et depuis n'importe quel appareil connecté, offrant ainsi une tranquillité d'esprit aux utilisateurs.

En résumé, notre application révolutionnaire offre une approche novatrice et pratique à la gestion des notes et des idées, en combinant la simplicité du post-it avec la puissance de la technologie numérique. Avec ses fonctionnalités intuitives et sa flexibilité, elle répond aux besoins essentiels des utilisateurs dans leur quotidien professionnel et personnel.


## :laptop: Présentation technique du projet

**Backend :**
Nous avons opté pour l'utilisation du langage C# pour le développement du backend de notre application. C# est un langage robuste et largement utilisé dans le développement d'applications web. Pour la gestion de la base de données, nous allons mettre en œuvre Entity Framework, un ORM (Object-Relational Mapping) qui facilite l'interaction avec la base de données en utilisant des objets .NET. Entity Framework nous permettra de manipuler les données de manière efficace et sécurisée, tout en réduisant le temps de développement.

**Frontend :**
Pour le frontend de notre application, nous avons choisi d'utiliser React, une bibliothèque JavaScript moderne et populaire pour la construction d'interfaces utilisateur interactives. React nous offre un développement rapide et efficace grâce à sa structure modulaire et à sa capacité de réutilisation des composants. Nous pourrons ainsi créer une interface utilisateur dynamique et réactive, offrant une expérience utilisateur fluide et intuitive.

**Base de données :**
Nous avons opté pour PostgreSQL comme système de gestion de base de données. PostgreSQL est un système de base de données open-source robuste et fiable, offrant des fonctionnalités avancées et une grande stabilité. Sa prise en charge complète des transactions ACID et sa compatibilité avec les normes SQL en font un choix idéal pour notre application. De plus, sa flexibilité et sa capacité à gérer des charges de travail élevées en font un choix judicieux pour nos besoins.

En combinant ces technologies, nous serons en mesure de développer une application de gestion de post-it numériques qui soit à la fois performante, sécurisée et conviviale. Notre objectif est de fournir aux utilisateurs une expérience utilisateur exceptionnelle tout en garantissant la stabilité et la fiabilité de l'application.


###  :tools: Technologies Utilisées

- ![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)
- ![Markdown](https://img.shields.io/badge/markdown-%23000000.svg?style=for-the-badge&logo=markdown&logoColor=white)
- ![Visual Studio](https://img.shields.io/badge/Visual%20Studio-5C2D91.svg?style=for-the-badge&logo=visual-studio&logoColor=white)
- ![C#](https://img.shields.io/badge/C%23-%23239120.svg?style=for-the-badge&logo=c-sharp&logoColor=white)
- ![.NET Core](https://img.shields.io/badge/.NET%20Core-5C2D91.svg?style=for-the-badge&logo=.net&logoColor=white)
- ![Entity Framework Core](https://img.shields.io/badge/Entity%20Framework%20Core-512BD4.svg?style=for-the-badge&logo=.net&logoColor=white)
- ![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)
- ![JavaScript](https://img.shields.io/badge/JavaScript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)
- ![React](https://img.shields.io/badge/React-%2320232a.svg?style=for-the-badge&logo=react&logoColor=%2361DAFB)
- ![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
- ![JIRA](https://img.shields.io/badge/JIRA-0052CC.svg?style=for-the-badge&logo=jira&logoColor=white)


