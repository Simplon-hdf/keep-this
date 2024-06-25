# Stratégie de sécurisation : RGPD

Pour garantir la conformité au Règlement Général sur la Protection des Données (RGPD) lors du développement d'une application de prise de notes, il est crucial de mettre en œuvre des mesures de sécurité robustes qui protègent les données des utilisateurs. Voici des stratégies complètes à prendre en considération :

## 1. Pseudonymisation et minimisation des Données

- **Anonymisation** : Les informations permettant d’identifier directement ou indirectement une personne sont supprimées ou altérées de manière à ne plus être reconnaissables.
- **Pseudonymisation** : Les données personnelles sont associées à des identifiants fictifs, préservant ainsi l'anonymat des utilisateurs en cas de fuite de données.

Dans notre application, les utilisateurs sont invités à choisir un pseudonyme qui peut être modifié à tout moment, préservant ainsi leur anonymat tout en leur offrant une certaine flexibilité.

## 2. Minimisation des Données

- **Collecte Limitée** : Seules les données strictement nécessaires aux finalités spécifiques de l'application sont collectées.
- **Suppression des Données Inutiles** : Les données personnelles qui ne sont plus nécessaires sont supprimées ou anonymisées. On donne aussi la possibilité aux utilisateurs d’archiver leurs notes, **après 3 ans de conservation**, ceux-ci seront définitivement supprimées de la base de données.

Nous collectons uniquement les informations essentielles pour fournir le service de prise de notes, minimisant ainsi la quantité de données personnelles stockées.

## 3. Demande de Consentement

- **Consentement Clair et Informé** : Les utilisateurs sont informés de manière transparente sur la collecte et l'utilisation de leurs données personnelles et donnent leur consentement explicite.
- **Options de Consentement** : Les utilisateurs ont la possibilité de consentir ou de refuser le traitement de leurs données personnelles, notamment pour les traitements qui ne sont pas nécessaires à l'exécution du service.

Lors de la création de leur compte, nos utilisateurs sont informés de notre politique de confidentialité et sont invités à consentir au traitement de leurs données conformément à celle-ci.

## 4. Contrôles d'Accès

- **Authentification Forte** :  Un code est envoyé sur leur adresse e-mail pour valider la création du compte. On va aussi mettre en place des règles strictes pour avoir des mots de passe robustes.
- **Gestion des Droits d'Accès** : Les accès aux données sensibles sont limités aux personnes autorisées. Le système de gestion des accès est basé sur le principe du Contrôle d'Accès Basé sur les Rôles (RBAC), où chaque utilisateur se voit attribuer des privilèges spécifiques en fonction de son rôle. Par exemple, seuls les administrateurs ont accès à la liste de tous les comptes utilisateurs. Chaque utilisateur n'a accès qu'à ses propres notes.

## 5. Chiffrement des Données

- **Chiffrement en Transit** : Toutes les données échangées entre les utilisateurs et les serveurs sont protégées en utilisant des protocoles sécurisés tels que TLS.
- **Chiffrement au Repos** : Les données stockées dans la base de données ainsi que sur les appareils des utilisateurs sont chiffrées. Les mots de passe sont également cryptés pour garantir la sécurité des comptes.

## 6. Journalisation et Monitoring

- **Logs de Sécurité** : Les activités et les accès sont enregistrés dans des journaux de sécurité afin de détecter toute activité anormale.

Nous allons mettre en place une journalisation des activités de l’application afin d’avoir un log complet des erreurs, on pourra ainsi mieux gérer les anomalies.

## 7. Politiques de Sécurité

- **Politiques de Confidentialité** : Des politiques de confidentialité claires et facilement accessibles sont développées et maintenues.
- **Respect des droits des personnes concernées** : Les utilisateurs ont la possibilité d'exercer leurs droits en vertu du RGPD, tels que le droit d'accès, de rectification, d'effacement et de restriction du traitement de leurs données. Ils peuvent ainsi accéder à leurs notes, les modifier, les archiver, etc… conformément à leurs préférences et droits.

## 8. Actions en Cas de Perte de Données

- **Notification Immédiate** : En cas de perte de données, une notification est envoyée dans un délai de 72 H **maximum** aux autorités de protection des données compétentes (CNIL **Commission nationale de l'informatique et des libertés)** et aux utilisateurs concernés.
- **Analyse des Causes** : Une enquête est menée pour déterminer les causes de la perte de données et prendre des mesures correctives pour éviter toute récurrence.
- **Mesures de Mitigation** : Des mesures sont prises pour limiter les conséquences de la perte de données, telles que la restauration à partir de sauvegardes récentes si possible.
- **Communication Transparente** : Les utilisateurs sont informés de manière transparente sur la nature et l'ampleur de la perte de données, ainsi que sur les mesures prises pour remédier à la situation.

En mettant en œuvre ces stratégies, nous pourrons protéger efficacement les données des utilisateurs, minimiser les risques de non-conformité au RGPD et renforcer la confiance de nos utilisateurs.
