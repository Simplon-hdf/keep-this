# Stratégie de Sécurisation

## Introduction

Une stratégie de conception et de sécurisation est un ensemble de principes, de lignes directrices et de pratiques visant à garantir que les logiciels développés sont robustes, fiables et sécurisés. Elle englobe tous les aspects du processus de développement, de la conception initiale à la mise en production, en passant par la phase de test et de déploiement. Une bonne stratégie de conception et de sécurisation prend en compte les menaces potentielles, les vulnérabilités du système et les meilleures pratiques de sécurité pour réduire les risques d'exploitation par des attaquants.

## Contexte

Dans le cadre du titre concépteur et développeur d'application, nous présentons une application de prise de note sécurisée qui offre aux utilisateurs un espace intuitif pour écrire, modifier et organiser leur notes. Cette application permet aux utilisateurs de se connecter à leur compte personnel afin d'accéder à leurs notes depuis n'importe quel appareil connecté à Internet. Chaque utilisateur peut créer des notes et les organiser dans des carnets selon des thèmes communs, ce qui facilite la gestion et la recherche de contenu pertinent. Notre objectif est de fournir une expérience utilisateur
fluide tout en garantissant la sécurité et la confidentialité des données de nos utilisateurs.

## Principes de Sécurisation

### Défense en profondeur

Le principe de défense en profondeur implique l’implémentation de plusieurs couches de sécurité. Chaque couche offre une protection supplémentaire contre les menaces potentielles, garantissant ainsi que la compromission d’une couche ne compromet pas l’ensemble du système

### Réduction de la surface d’attaque

la réduction de la surface d’attaque consiste à minimiser le nombre de points d’entrée possibles pour les attaquants. Cela inclut la limitation des fonctionnalités accessibles au public et la sécurisation des interfaces exposées

### Moindre privilège

Le principe du moindre privilège consiste à donner aux utilisateurs et aux processus uniquement les permissions nécessaires pour accomplir leurs tâches. Cela réduit les risques en limitant les actions que peuvent effectuer des entités potentiellement compromises

## Principales menaces

### Injections de code

Les injections de code, telles que les injections SQL et les injections de commande, peuvent permettre à des attaquants d’exécuter des commandes malveillantes.

### Attaques XSS (Cross-site Scripting)

Les attaques XSS permettent aux attaquants d’injecter des scripts malveillants dans les pages web, compromettant la sécurité des utilisateurs.

### Détournement de sessions

Les sessions non sécurisées peuvent être détournées, permettant à des attaquants de prendre le contrôle de comptes utilisateur.

### Politique de Sécurisation

1. [Sécurisation des fronts](Security/)
2. [Sécurisation de l’API](Security/)
3. [Sécurisation de la base de données](Security/security-strategy-BDD.md)
4. [RGPD](Security/security-strategy-RGPD.md)

## Conclusion

En conclusion, l'analyse des risques d'une application de prise de notes met en lumière plusieurs menaces potentielles pour la sécurité des données et des utilisateurs. Les principales vulnérabilités comprennent les attaques d'injection SQL, les attaques XSS, le stockage non sécurisé des informations sensibles, les attaques CSRF, et d'autres risques liés à la configuration incorrecte et à la surveillance insuffisante. Pour atténuer ces risques, il est crucial de mettre en oeuvre des solutions conformes aux recommandations de l'ANSSI, telles que la validation et le filtrage des données entrantes, la mise en oeuvre de politiques de sécurité CSP, la gestion des mises à jour de sécurité pour les composants logiciels tiers, et la surveillance continue de la sécurité de l'application. En adoptant une approche proactive de la sécurité, en sensibilisant les développeurs aux bonnes pratiques de codage sécurisé, et en mettant en place des mesures de contrôle et de surveillance efficaces, il est possible de réduire efficacement les risques et de garantir la protection des données et la confiance des utilisateurs de notre application.
