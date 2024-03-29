# Analyse du Besoin

## Introduction

Dans un context où les informations arrivent de partout et à des moments inopportuns, leurs enregistrements demande soit un bonne mémoire, soit une disipline pour la prise de note que tout le monde ne possède pas. Même si il existe des applications pour prendre des notes. Leurs utilisation n'est pas toujours adapté à la situation, ou ne permet pas leurs rassemblement.

Le concepte de l'application est d'offir à un utilisateur la possibilité d'enregistrer une information dans un mémorandum sans en préciser le contexte et de le lui suggerer après la création du mémo ou de lui en donner la possibilité d'en créer un.

## Problèmes

|Problématiques                                             |Problème                                               |Solutions                                                        |
|:----------------------------------------------------------|:------------------------------------------------------|:----------------------------------------------------------------|
|Complexité à organiser des informations                    |Multiplicité des étapes d'enregistrement               | Réduire le nombre d'étapes                                      |
|                                                           |Multiplicité des interactions                          | Interface intuitive                                             |
|                                                           |Informations dispersées                                | Rassembler les informations par sujet                           |
|                                                           |Multiplicité des étapes d'organisation                 | Suggérer automatiquement une association                        |
|Difficulté à enregistrer les données                       |Multiplicité des plateformes d'utilisation             | Centraliser les enregistrements                                 |
|                                                           |Risque de fuite de données                             | Authentification forte                                          |
|                                                           |Perte des saisies utilisateur                          | Synchronisation des actions utilisateur                         |
||||

## Solutions

### Réduire le nombre d'étapes (AUR)

![Multiple steps illustration](assets/multiple-steps.png)

Après avoir comparé plusieurs applications de prise de notes, une particularité commune nous a immédiatement sauté aux yeux : le nombre d’étapes nécessaires à l’enregistrement d’une note.

En effet, la plupart des applications existantes demandent plusieurs détails, dont au minimum un titre et un contenu, et souvent même une étape finale d’enregistrement (un bouton *valider* par exemple).

Afin de réduire le nombre d’étapes avant d’enregistrer une note, nous avons décidé de séparer le processus en deux entités distinctes : les **mémos** et les **notes**. Nous reviendrons plus tard sur les **notes** comme nous l’entendons dans notre application.

Les **mémos** seront la première interaction entre l’utilisateur connecté et l’interface. Nous souhaitons que cette interaction se rapproche le plus possible de l’action de prendre un stylo et un papier, et gribouiller une idée.

Ainsi, dans l’application, un **mémo** permettra d’enregistrer une idée directement, sans clics intermédiaires. Il suffira de choisir d’ajouter un **mémo**, et de l’écrire. L’application se chargera elle-même d’effectuer l’enregistrement automatique de ce qui vient d’être entré (cf. [*Synchronisation des actions utilisateur*](#synchronisation-des-actions-utilisateur)).

Plus besoin de titres, de sujets, ou de bouton *valider*. Cela permettra un gain de temps non négligeable si l’on considère le nombre de **mémos** pouvant être créés. L'utilisateur peut ainsi noter tout ce qui lui passe par la tête à la volée.

### Interface intuitive (VAL)

Notre interface utilisateur a été conçue avec pour objectif principal la simplicité et l'accessibilité pour la prise de notes. En mettant l'accent sur une disposition claire et des fonctionnalités intuitives, nous avons veillé à ce que les utilisateurs puissent rapidement capturer leurs idées sans rencontrer de barrières techniques. 

Les éléments d'interface sont disposés de manière logique, avec des boutons et des options facilement identifiables pour créer, modifier et organiser ce qui a été saisi. Pour l’enregistrement d’un mémo, nous avons conçu une interface avec une seule zone de saisie où les utilisateurs peuvent rapidement rédiger leurs mémos sans être distraits par des éléments superflus. Cette zone de saisie est  facile à utiliser, permettant aux utilisateurs de se concentrer entièrement sur le contenu de leurs notes. 

Chaque fonctionnalité aura donc son propre bouton, ou sa propre page dédié. Cette conception vise à éviter de submerger l'utilisateur avec trop d'informations de navigation à la fois, garantissant ainsi une expérience fluide et intuitive. 

Sur la version bureau, chaque fonctionnalité clé, comme la création de nouvelles notes, la gestion des catégories ou la recherche, est clairement identifiable par des boutons distincts, offrant une navigation directe et sans encombre.  

Sur la version mobile ,  un menu radial a été pensé pour permettre une navigation facile et fluide entre les notes et les mémos. Ce menu radial offre une interface tactile intuitive, permettant aux utilisateurs de passer rapidement d'une fonctionnalité à une autre avec un simple toucher. 

En résumé, notre interface simplifie la prise de notes avec des fonctionnalités claires sur bureau et un menu radial sur mobile, assurant une expérience utilisateur harmonieuse.

### Rassembler les informations par sujet
Dans le cadre de la conception d'une application de prise de notes, il est crucial de comprendre les besoins des utilisateurs pour résoudre les problèmes liés à l'organisation des mémos. Un défi fréquent rencontré par de nombreux utilisateurs est la difficulté à retrouver rapidement des mémos précédemment enregistrés. Ceci est souvent dû au manque de structure et d'organisation efficace des informations. Les mémos peuvent être dispersés et non classés, ce qui rend leur recherche fastidieuse.

Pour remédier à cette problématique, notre application propose une solution intuitive et pratique : la fonctionnalité de regroupement des mémos dans des notes. Chaque note constitue un ensemble organisé de mémos partageant un même thème ou sujet, représenté par le titre de la note. Cette approche permet aux utilisateurs de rassembler les mémos similaires en un seul endroit, facilitant ainsi leur accès et leur gestion.

En regroupant les mémos dans des notes, les utilisateurs peuvent organiser leurs idées, projets, ou tâches par thèmes ou catégories pertinentes. Par exemple, un utilisateur peut créer une note pour ses idées de voyage, une autre pour ses listes de tâches personnelles, et ainsi de suite. Cette structuration aide à rationaliser le processus de prise de notes et améliore l'efficacité globale de la gestion des informations.

Bien sûr, pour répondre aux besoins de nos utilisateurs, notre application de prise de notes propose également des fonctionnalités avancées pour afficher et trier les notes en fonction de divers critères. Voici quelques-unes des fonctionnalités de gestion des notes que notre application offre :

1. **Affichage des Notes**: Les utilisateurs peuvent facilement visualiser toutes leurs notes dans une vue globale. Chaque note est représentée par son titre, fournissant ainsi un aperçu rapide du contenu.
2. **Tri par Date de Création**: Les notes peuvent être triées chronologiquement en fonction de leur date de création. Cette fonctionnalité permet aux utilisateurs de retrouver rapidement les notes les plus récentes ou de parcourir l'historique des notes.
3. **Recherche par Mot-Clé**: Notre application propose une fonction de recherche puissante qui permet aux utilisateurs de rechercher des notes en fonction de mots-clés spécifiques. Cette fonctionnalité facilite la localisation rapide des notes pertinentes parmi une grande quantité de données.

En résumé, en offrant la possibilité de regrouper les mémos dans des notes, notre application répond de manière proactive aux besoins des utilisateurs en matière d'organisation et de gestion des informations. Cette fonctionnalité contribue à améliorer l'expérience utilisateur en rendant la recherche et la consultation des mémos plus simples et plus efficaces.

### Suggérer automatiquement une association (KEV)

Pour pouvoir associer automatiquement les mémorandums au notes il faut pouvoir déterminer comment les mots sont associer entre eux. Il est compliqué pour un programme de déterminer le sens d'une phrases. En revanche il est plutot aisée de compter pour une machine. Si Dans un certain contexte on calcule qu'elle est la probabilité qu'un mot s'associe avec un autre. Nous serions en mesure de donner un taux d'association entre un mot et un autre mot. Ainsi donc chaque mot d'un titre possédéra un taux d'association avec chaque mot d'un mémorandum. la multiplication de toutes les taux nous donnera une note d'association entre le titre d'une note et le contenu du Mémo. Plus cette valeur est élévé, plus il est probable que ce mémo et cette note sont associable.

### Centraliser les enregistrements

### Authentification forte (KEV)

### Synchronisation des actions utilisateur
