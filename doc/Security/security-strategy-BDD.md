### **Sécurité de la base de données:**

- **Contrôle d'accès physique** : Le serveur hébergeant PostgreSQL est dans un environnement sécurisé et accessible uniquement par le personnel autorisé.
- **Système d'exploitation** : Utilisation des comptes utilisateur distincts pour exécuter PostgreSQL. Les permissions de ces comptes seront limités pour minimiser les risques.
- **Pare-feu** : Un pare-feu est utilisé pour restreindre l'accès au port PostgreSQL (par défaut, 5432) uniquement aux adresses IP autorisées. Nous allons mettre en place une “liste blanche”, qui contiendras seulement les IP autorisées à acceder au port 5432.
- **Mises à jour régulières:** Nous Appliquerons régulièrement les mises à jour de sécurité de PostgreSQL pour corriger les vulnérabilités connues.
- **Configuration sécurisée:**  PostgreSQL sera configuré pour désactiver les fonctionnalités non utilisées et renforcer les protections par défaut. Par exemple, modifier le fichier **`postgresql.conf`** pour ajuster les paramètres de sécurité (configuration SSL) ou utilisez **`pg_hba.conf`** pour gérer les méthodes d'authentification et restreindre l'accès.
- **Surveillance et journalisation:** Nous pourrons surveiller l'activité de la base de données et journaliser les événements critiques pour détecter les activités suspectes.
- **Sauvegarde régulière de la base de données :** Nous allons mettre en place un plan de sauvegarde incluant des sauvegardes automatiques régulières **quotidiennes**  et la conservation des sauvegardes sur un support sécurisé et séparé, par exemple un serveur distant sécurisé.

**Sécurité des applications:**

- **Validation des entrées:** Toutes les entrées utilisateurs  seront rigoureusement validées pour empêcher les injections de code malveillant et autres attaques.

- **Tests de sécurité:** Des tests de sécurité réguliers de l'application serviront à identifier et corriger les vulnérabilités.
- **Mise à jour des bibliothèques:** Nous allons mettre régulièrement à jour les bibliothèques tierces utilisées par l'application pour corriger les vulnérabilités connues.

**Partage de notes:**

- **Contrôle du partage:** Des contrôles d'accès seront mis en place au niveau applicatif pour permettre aux utilisateurs de partager des notes avec des permissions spécifiques (lecture, écriture). Ceci rajoutera une couche supplémentaire à qui peut accéder certaines données dans la base de donnée.
- **Journal du partage de note:** Une journalisation du partage de note sera mis en place afin de savoir quelles notes a été envoyé à quel utilisateur ainsi qu ela réponse de ce partage, s’il a été accepté, ou refusé. Cette journalisation nous permettra aussi d’être informé en cas d’activité anormales et y remédier.



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

