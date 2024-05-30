### **Sécurité du FRONT-END:**




### **Sécurité de l'API:**





### **Sécurité de la base de données:**

- **Contrôle d'accès physique** : Le serveur hébergeant PostgreSQL est dans un environnement sécurisé et accessible uniquement par le personnel autorisé.
- **Système d'exploitation** : Utilisation des comptes utilisateur distincts pour exécuter PostgreSQL. Les permissions de ces comptes seront limités pour minimiser les risques.
- **Pare-feu** : Un pare-feu est utilisé pour restreindre l'accès au port PostgreSQL (par défaut, 5432) uniquement aux adresses IP autorisées. Nous allons mettre en place une “liste blanche”, qui contiendras seulement les IP autorisées à acceder au port 5432.
- **Mises à jour régulières:** Nous Appliquerons régulièrement les mises à jour de sécurité de PostgreSQL pour corriger les vulnérabilités connues.
- **Configuration sécurisée:**  PostgreSQL sera configuré pour désactiver les fonctionnalités non utilisées et renforcer les protections par défaut. Par exemple, modifier le fichier **`postgresql.conf`** pour ajuster les paramètres de sécurité (configuration SSL) ou utilisez **`pg_hba.conf`** pour gérer les méthodes d'authentification et restreindre l'accès.
- **Surveillance et journalisation:** Nous pourrons surveiller l'activité de la base de données et journaliser les événements critiques pour détecter les activités suspectes.
- **Sauvegarde régulière de la base de données :** Nous allons mettre en place un plan de sauvegarde incluant des sauvegardes automatiques régulières **quotidiennes**  et la conservation des sauvegardes sur un support sécurisé et séparé, par exemple un serveur distant sécurisé.

**Sécurité des applications:**

- **Validation des entrées:** Toutes les entrées utilisateurs  seront rigouresement validées pour empêcher les injections de code malveillant et autres attaques. Les entrées doivent correspondrent au
- **Tests de sécurité:** Des tests de sécurité réguliers de l'application serviront à identifier et corriger les vulnérabilités.
- **Mise à jour des bibliothèques:** Nous allons mettre régulièrement à jour les bibliothèques tierces utilisées par l'application pour corriger les vulnérabilités connues.

**Partage de notes:**

- **Contrôle du partage:** Des contrôles d'accès seront mis en place au niveau applicatif pour permettre aux utilisateurs de partager des notes avec des permissions spécifiques (lecture, écriture). Ceci rajoutera une couche supplémentaire à qui peut accéder certaines données dans la base de donnée.
- **Journal du partage de note:** Une journalisation du partage de note sera mis en place afin de savoir quelles notes a été envoyé à quel utilisateur ainsi qu ela réponse de ce partage, s’il a été accepté, ou refusé. Cette journalisation nous permettra aussi d’être informé en cas d’activité anormales et y remédier.

### Politique de mot de passe :

- Pour garantir la sécurité des comptes utilisateurs, notre application impose des exigences strictes en matière de mot de passe. Les mots de passe doivent contenir au moins **une lettre minuscule, une lettre majuscule, un chiffre, un caractère spécial,** et doivent comporter **au moins 12 caractères.**
- Les tentatives de connexion sont limitées pour prévenir les attaques par force brute. Au bout de 3 tentatives, l’athentification est bloquée pendant **15min.**
- Les mots de passe sont stockés de manière sécurisée en utilisant le **hachage Bcrypt avec salage** pour renforcer la protection des données.
- En cas de besoin, les utilisateurs peuvent réinitialiser leur mot de passe via un lien de réinitialisation valide pendant 24 heures.
- On va utiliser des mécanismes d'authentification forts tels que JWT(JSON Web Tokens) ou des sessions sécurisées avec des identifiants uniques et aléatoires. Les sessions utilisateurs ne peuvent être valides indéfiniment, il faut donc mettre en place des mécanismes de renouvellement des jetons et des sessions pour éviter les attaques de session volée. par exemple tous les **3 mois**, l’utilisateur doit se reconnecter sur l’application pour renouveller sa session.
- Les utilisateurs doivent obligatoirement **se réauthentifier** pour effectuer des actions majeures concernant leur compte.


## RGPD

Pour garantir la conformité au Règlement Général sur la Protection des Données (RGPD) lors du développement d'une application de prise de notes, il est crucial de mettre en œuvre des mesures de sécurité robustes qui protègent les données des utilisateurs. Voici des stratégies complètes à prendre en considération :

**1. Pseudonymisation** **et minimisation des Données**

- **Anonymisation** : Les informations permettant d’identifier directement ou indirectement une personne sont supprimées ou altérées de manière à ne plus être reconnaissables.
- **Pseudonymisation** : Les données personnelles sont associées à des identifiants fictifs, préservant ainsi l'anonymat des utilisateurs en cas de fuite de données.

Dans notre application, les utilisateurs sont invités à choisir un pseudonyme qui peut être modifié à tout moment, préservant ainsi leur anonymat tout en leur offrant une certaine flexibilité.

**2. Minimisation des Données**

- **Collecte Limitée** : Seules les données strictement nécessaires aux finalités spécifiques de l'application sont collectées.
- **Suppression des Données Inutiles** : Les données personnelles qui ne sont plus nécessaires sont supprimées ou anonymisées. On donne aussi la possibilité aux utilisateurs d’archiver leur note, **après 3 ans de conservation**, ceux-ci seront définitivement supprimés de la base de données.

Nous collectons uniquement les informations essentielles pour fournir le service de prise de notes, minimisant ainsi la quantité de données personnelles stockées.

**3. Demande de Consentement**

- **Consentement Clair et Informé** : Les utilisateurs sont informés de manière transparente sur la collecte et l'utilisation de leurs données personnelles et donnent leur consentement explicite.
- **Options de Consentement** : Les utilisateurs ont la possibilité de consentir ou de refuser le traitement de leurs données personnelles, notamment pour les traitements qui ne sont pas nécessaires à l'exécution du service.

Lors de la création de leur compte, nos utilisateurs sont informés de notre politique de confidentialité et sont invités à consentir au traitement de leurs données conformément à celle-ci. 

**4. Contrôles d'Accès**

- **Authentification Forte** :  Un code est envoyé sur leur adresse e-mail pour valider la création du compte. On va aussi mettre en place des règles strictes pour avoir des mots de passe robustes.
- **Gestion des Droits d'Accès** : Les accès aux données sensibles sont limités aux personnes autorisées. Le système de gestion des accès est basé sur le principe du Contrôle d'Accès Basé sur les Rôles (RBAC), où chaque utilisateur se voit attribuer des privilèges spécifiques en fonction de son rôle. Par exemple, seuls les administrateurs ont accès à la liste de tous les comptes utilisateurs. Chaque utilisateur n'a accès qu'à ses propres notes.

**5. Chiffrement des Données**

- **Chiffrement en Transit** : Toutes les données échangées entre les utilisateurs et les serveurs sont protégées en utilisant des protocoles sécurisés tels que TLS.
- **Chiffrement au Repos** : Les données stockées dans la base de données ainsi que sur les appareils des utilisateurs sont chiffrées. Les mots de passe sont également cryptés pour garantir la sécurité des comptes.

**6. Journalisation et Monitoring**

- **Logs de Sécurité** : Les activités et les accès sont enregistrés dans des journaux de sécurité afin de détecter toute activité anormale.

Nous allons mettre en place une journalisation des activités de l’application afin d’avoir un log complet des erreurs, on pourra ainsi mieux gérer les anomalies. 

**7. Politiques de Sécurité**

- **Politiques de Confidentialité** : Des politiques de confidentialité claires et facilement accessibles sont développées et maintenues.
- **Respect des droits des personnes concernées** : Les utilisateurs ont la possibilité d'exercer leurs droits en vertu du RGPD, tels que le droit d'accès, de rectification, d'effacement et de restriction du traitement de leurs données. Ils peuvent ainsi accéder à leurs notes, les modifier, les archiver, etc… conformément à leurs préférences et droits.

**8. Actions en Cas de Perte de Données**

- **Notification Immédiate** : En cas de perte de données, une notification est envoyée dans un délais de 72 H **maximum** aux autorités de protection des données compétentes (CNIL **Commission nationale de l'informatique et des libertés)** et aux utilisateurs concernés.
- **Analyse des Causes** : Une enquête est menée pour déterminer les causes de la perte de données et prendre des mesures correctives pour éviter toute récurrence.
- **Mesures de Mitigation** : Des mesures sont prises pour limiter les conséquences de la perte de données, telles que la restauration à partir de sauvegardes récentes si possible.
- **Communication Transparente** : Les utilisateurs sont informés de manière transparente sur la nature et l'ampleur de la perte de données, ainsi que sur les mesures prises pour remédier à la situation.

En mettant en œuvre ces stratégies, nous pourront protéger efficacement les données des utilisateurs, minimiser les risques de non-conformité au RGPD et renforcer la confiance de nos utilisateurs.


___
<details>
<summary>Liste des recommendations ANSSI pour la BDD :</summary>

- **R13** : Restreindre les contenus aux ressources fiables.
- **R23** : Ne pas stocker des informations sensibles dans les bases de données locales.
- **R14** : Mettre en oeuvre CSP par en-tête HTTP.
- **R62** : Maintenir à jour les composants logiciels tiers utilisés.
- **R7** : Vérifier l'échappement des contenus inclus.
- **R21** : Définir la stratégie de construction de l'en-tête Referer.
</details>

<details>
<summary>Liste des recommandatiosn ANSSI pour l’authentification :</summary>

- **R2** : Privilégier l’utilisation de moyens d’authentification forts
- **R3**:  Conduire une analyse de risque
- **R5** : Générer les éléments aléatoires avec un générateur de nombres aléatoires robuste
- **R6** : Remettre les facteurs d’authentification au travers de canaux sécurisés
- **R7** : Mettre en place un processus de renouvellement des facteurs d’authentification
- **R10** : Limiter dans le temps le nombre de tentatives d’authentification
- **R11** : Réaliser l’authentification au travers d’un canal sécurisé
- **R12** : Limiter la durée de validité d’une session authentifiée
- **R13** : Protéger les données d’authentification stockées par le vérifieur
- **R20** : Mettre en place une politique de sécurité des mots de passe
- **R21** : Imposer une longueur minimale pour les mots de passe
- **R23** : Mettre en œuvre des règles sur la complexité des mots de passe
- **R28** : Utiliser un sel aléatoire long
- **R30** : Proposer une méthode de recouvrement d’accès
</details>