# Business Rules


### **Entités**

### **Utilisateurs (User)**

- **ID**: Identifiant unique de l'utilisateur (UUID)
- **Pseudo**: Nom de l'utilisateur
- **Email**: Adresse email de l'utilisateur
- **Mot de passe**: Mot de passe pour l'authentification
- **Date de création**: Date de création de l’utilisateur
- **Statut:** l’utilisateur peut être actif ou pas.

**Gestion des Utilisateurs**

1. **Création de compte** : 
    - Un visiteur doit fournir une adresse email unique et un mot de passe pour créer un compte.
    - Un utilisateur doit avoir un pseudonyme.
    - Un utilisateur doit valider son email avec un code envoyé par email dans un délai de 24H.
2. **Authentification** :
    - Un utilisateur doit fournir son email et son mot de passe pour se connecter.
3. **Fonctionnalités utilisateur** : 
    - Un utilisateur peut mettre à jour son nom et son mot de passe.
    - Un utilisateur peut changer son email si il a été validé.
    - Un utilisater peut créer une note.
    - Un utilisateur peut modifier le contenu d'une note.
    - Un utilisateur peut consulter et restaurer des versions antérieures d'une note modifiée, jusqu’à un maximum de 3 itérations.
    - Un utilisateur peut archiver une note de la liste active.
    - Un utilisateur peut récupérer une note archivée.
    - Un utilisateur peut partager une note avec un autre utilisateur avec des droits de lecture seule ou d’écriture.
    - Un utilisateur peut créer un nouveau carnet pour organiser les notes.
    - Un utilisateur peut associer une note existante à un carnet.
    - Un utilisateur peut supprimer un carnet.

### **Notes**

- **ID**: Identifiant unique de la note
- **Contenu**: Contenu texte de la note
- **Date de création**: Date de création de la note
- **Date de modification**: Date de dernière modification de la note.
- **Date d’archivage** : Date d’archivage de la note.
- **Propriétaire**: ID de l'utilisateur propriétaire de la note.
- **Statut**: indique si la note est disponible ou archivé.

**Gestion des Notes**

- Une note peut être modifiée et une nouvelle version de la note est créée pour historique.
- L'utilisateur peut consulter et restaurer une version précédente de la note.
- L’historique d’une note se limite aux trois dernières versions.
- Une note peut être partagée entre plusieurs utilisateurs, en spécifiant les droits (lecture seule ou écriture).
- L’archivage d’une note est possible et elle reste récupérable pendant un certain temps (par exemple, 30 jours).

### **Carnets (Notebook)**

- **ID**: Identifiant unique du carnet
- **Titre**: titre du carnet
- **Date de création**: Date de création du carnet
- **Propriétaire**: ID de l'utilisateur propriétaire du carnet

**Gestion des Carnets**

- Un utilisateur peut créer un carnet.
- Un carnet doit avoir un titre.
- L'utilisateur peut ajouter des notes à un carnet existant.
- Un carnet peut être supprimé, les notes qu’il contient vont être archivées.

### **Administrateurs (Admin)**

- **ID**: Identifiant unique de l'administrateur (UUID)
- **Nom**: Nom de l'administrateur
- **Email**: Adresse email de l'administrateur
- **Mot de passe**: Mot de passe pour l'authentification
- **Date de création**: Date de création du compte administrateur

**Gestion des Administrateurs**

- **Authentification** : Un administrateur doit fournir son email et son mot de passe pour se connecter.
- **Création de compte administrateur** : Un administrateur peut créer des comptes administrateurs.
- **Gestion des utilisateurs** :
    - Un administrateur peut modifier un compte.
    - Un administrateur peut suspendre un compte.
    - Un administrateur peut supprimer un compte.
- **Surveillance et audit** : Un administrateur peut consulter les journaux d'activités des utilisateurs pour des raisons de sécurité et de conformité.