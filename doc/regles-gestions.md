# Règles de gestion

## Entités

### Utilisateur

- **ID**: Identifiant unique de l'utilisateur (UUID)
- **Pseudo**: Nom de l'utilisateur
- **Email**: Adresse email de l'utilisateur
- **Mot de passe**: Mot de passe pour l'authentification
- **Date de création**: Date de création de l’utilisateur
- **Statut:** l’utilisateur peut être actif ou pas.

#### Gestion des Utilisateurs

- **Création de compte** :
  - Un visiteur doit fournir une adresse email unique et un mot de passe pour créer un compte.
  - Un utilisateur doit avoir un pseudonyme.
  - Un utilisateur doit valider son email avec un code envoyé par email dans un délai de 24H.
- **Authentification** :
  - Un utilisateur doit fournir son email et son mot de passe pour se connecter.
- **Fonctionnalités utilisateur** :
  - Un utilisateur peut mettre à jour son nom et son mot de passe.
  - Un utilisateur peut changer son email si il a été validé.
  - Un utilisateur peut créer une note.
  - Un utilisateur peut modifier le contenu d'une note.
  - Un utilisateur peut consulter et restaurer des versions antérieures d'une note modifiée, jusqu’à un maximum de 3 itérations.
  - Un utilisateur peut archiver une note de la liste active.
  - Un utilisateur peut récupérer une note archivée.
  - Un utilisateur peut partager une note avec un autre utilisateur avec des droits de lecture seule ou d’écriture.
  - Un utilisateur peut créer un nouveau carnet pour organiser les notes.
  - Un utilisateur peut associer une note existante à un carnet.
  - Un utilisateur peut supprimer un carnet.

### Amis-Utilisateurs

- ID: Identifiant unique de la relation entre utilisateurs (UUID)
- Utilisateur 1: ID de l'utilisateur qui initie la relation d'amitié
- Utilisateur 2: ID de l'utilisateur avec qui la relation d'amitié est établie
- Statut de la demande: Indique si la demande d'amitié est en attente, acceptée ou refusée par l'utilisateur cible

#### Gestion des Amis-Utilisateurs

- Un utilisateur peut envoyer une demande d'amitié à un autre utilisateur en spécifiant l'ID de cet utilisateur.
- L'utilisateur cible peut accepter ou refuser la demande d'amitié.
- Une fois acceptée, les utilisateurs peuvent partager des notes et des carnets entre eux.
- Un utilisateur peut supprimer une relation d'amitié existante à tout moment.

### Notes

- **ID**: Identifiant unique de la note
- **Contenu**: Contenu texte de la note
- **Date de création**: Date de création de la note
- **Date de modification**: Date de dernière modification de la note.
- **Date d’archivage** : Date d’archivage de la note.
- **Propriétaire**: ID de l'utilisateur propriétaire de la note.
- **Statut**: indique si la note est disponible ou archivé.

#### Gestion des Notes

- Le contenu d'une note peut être modifié.
- L'utilisateur peut consulter et restaurer une version précédente de la note.
- L’historique d’une note se limite aux trois dernières versions.
- Une note peut être partagée entre plusieurs utilisateurs, en spécifiant les droits (lecture seule ou écriture).
- L’archivage d’une note est possible et elle reste récupérable pendant un certain temps (par exemple, 30 jours).
- La liste des notes peut être triée par ordre alphabétique.
- La liste des notes peut être triée par date.
- La liste des notes peut être filtrée selon les notes partagées ou non.
- La liste des notes peut être filtrée selon les notes archivées ou non.

### Carnets

- **ID**: Identifiant unique du carnet
- **Titre**: titre du carnet
- **Date de création**: Date de création du carnet
- **Propriétaire**: ID de l'utilisateur propriétaire du carnet

#### Gestion des Carnets

- Un utilisateur peut créer un carnet.
- Un carnet doit avoir un titre.
- L'utilisateur peut ajouter des notes à un carnet existant.
- Un carnet peut être supprimé, les notes qu’il contient seront archivées.

### **Administrateurs**

- **ID**: Identifiant unique de l'administrateur (UUID)
- **Nom**: Nom de l'administrateur
- **Email**: Adresse email de l'administrateur
- **Mot de passe**: Mot de passe pour l'authentification
- **Date de création**: Date de création du compte administrateur

#### Gestion des Administrateurs

- **Authentification** : Un administrateur doit fournir son email et son mot de passe pour se connecter.
- **Création de compte administrateur** : Un administrateur peut créer des comptes administrateurs.
- **Gestion des utilisateurs** :
  - Un administrateur peut suspendre un compte.
  - Un administrateur peut supprimer un compte.
- **Surveillance et audit** : Un administrateur peut consulter les journaux d'activité des utilisateurs pour des raisons de sécurité et de conformité.
