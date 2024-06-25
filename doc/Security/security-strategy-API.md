# Sécurisation de l'API

## Introduction

Dans le cadre de la réalisation de notre application nous avons fait le choix de centraliser tous les enregistrements grâce à une API (interface de programmation d'application). Cette API aura à traiter des données personnelles sensibles de nos utilisateurs comme en autres leurs nom, leurs adresses e-mail, leurs notes, …

Ces informations soulèvent des questions de sécurité quant à la protection de ces informations contre l’accès et l’utilisation non autorisée. En appliquant les recommandation de l’ainsi et en suivant le concept des trois piliers nous pourrions être en mesure de réduire la possibilité à des personnes malveillante d'accéder à ses données.

## Liste de recommandation à appliquer

R1 - Utilisation de TLS
R2 - Mettre en œuvre HSTS
R3 - Surveiller les CT logs
R6 - Expliciter la nature d'une ressource avec l'en-tête Content-Type
R7 - Vérifier l'échappement des contenus inclus
R8 - Vérifier la conformité des données issues de sources externes
R9 - Proscrire l'usage de la fonction eval()
R10 - Proscrire l'usage de constructions basées sur l'évaluation de code
R11 - Contrôler l'intégrité des contenus internes
R12 - Contrôler l'intégrité des contenus tiers
R13 - Restreindre les contenus aux ressources fiables
R21 - Définir la stratégie de construction de l’en-tête Referer
R26 - Ne pas stocker d’informations sensibles dans les cookies
R31 - Limiter le transit des cookies aux flux sécurisés
R32 - Définir une stratégie stricte d’envoi des cookies en cross-site
R35 - Choisir une API selon sa méthode HTTP
R38 - Protéger les appels XHR par un contrôle anti-CSRF
R39 - Mettre en œuvre un preflight lors des appels CORS
R40 - Vérifier la valeur de l’Origin lors de la réception d’une requête CORS
R41 - Cloisonner les services web au moyen de noms de domaine distincts
R61 -  Limiter les composants logiciels tiers
R62 - Maintenir à jour les composants logiciels tiers utilisés
R63 - Ne pas modifier le cœur des composants logiciels tiers utilisés

## Politique de sécurisation

### Sécurisation des Communications

- Utilisation du TLS

Il est crucial de chiffrer les communications entre le client et le serveur pour protéger les données en transit. Pour ce faire, il faut implémenter le TLS (Transport Layer Security) en utilisant des certificats SSL/TLS. Cela garantit que les données échangées restent confidentielles et intégrales.

- Mettre en oeuvre du HSTS

Pour renforcer l'utilisation de connexions sécurisées, le HTTP Strict Transport Security (HSTS) doit être configuré. Cette politique force les navigateurs à toujours utiliser HTTPS, empêchant les connexions non sécurisées.

- Limiter le transit des cookies aux flux sécurisés

Garantir que les cookies sont envoyés uniquement sur des connexions HTTPS, en utilisant l'attribut Secure pour protéger les informations sensibles en transit.

### Protection contre les Attaques et Vulnérabilités

- Surveiller les CT logs

Les logs de Transparency Certificate (CT) permettent de détecter des certificats non autorisés. Utilisez des services de surveillance des CT logs peut assurer qu'aucun certificat frauduleux n'a été émis pour votre domaine.

- Échapper les contenus inclus

Pour éviter les attaques de type Cross-Site Scripting (XSS), Il faut s’assurer que tous les contenus inclus dans les réponses HTML sont correctement échappés. Cela empêche l'injection de scripts malveillants.

- Valider les données externes

Toutes les données provenant de sources externes doivent être validées et nettoyées avant utilisation. Cela prévient les attaques par injection et autres vulnérabilités liées aux données non fiables.

- Protéger les appels XHR contre les attaques CSRF

L’implémentation de tokens CSRF pour sécuriser les requêtes XHR (XMLHttpRequest). Ces tokens vérifient que les requêtes proviennent de sources autorisées.

- Preflight pour les appels CORS

La configuration des pré-requêtes CORS (Cross-Origin Resource Sharing) valide les requêtes cross-origin avant leur exécution. Cela empêche les requêtes malveillantes d'accéder aux ressources.

- Vérifier la valeur de l’Origin en CORS

S’assurer que la requête CORS provient d'une source de confiance en validant l'en-tête Origin. protège les ressources contre les accès non autorisés.

### Gestion des Cookies et des En-têtes HTTP

- Configurer l’en-tête Content-Type

Pour garantir que les navigateurs interprètent correctement les données, il faut spécifier l'en-tête Content-Type dans toutes les réponses de l'API.

- Définir la politique de l’en-tête Referrer

La configuration de l'en-tête Referrer-Policy permet de contrôler les informations de référent envoyées par le navigateur. Cela protège les données sensibles lors de la navigation entre différents sites.

- Ne pas stocker d’informations sensibles dans les cookies

En limitant les informations sensibles stockées dans les cookies. Et en utilisant les attributs HttpOnly et Secure pour empêcher l'accès par des scripts et assurer que les cookies ne sont envoyés que sur des connexions sécurisées.

- Stratégie stricte d’envoi des cookies en cross-site

En Configurant l’attributs SameSite pour contrôler l'envoi des cookies en cross-site. Cela protège contre les attaques CSRF (Cross-Site Request Forgery).

### Bonnes Pratiques de Développement

- Choisir une API selon sa méthode HTTP

L’utilisation des méthodes HTTP appropriées pour les opérations (GET, POST, PUT, DELETE). Chaque méthode a des utilisations spécifiques et leur utilisation correcte renforce la sécurité et la clarté de l'API.

- Éviter l'usage de eval()

L'utilisation de la fonction eval() est dangereuse, car elle peut exécuter du code arbitraire. Il est recommandé de ne jamais l’utiliser pour éviter des failles de sécurité.

- Éviter les évaluations de code dynamiques

En évitant d’inclure l'utilisation de méthodes ou de fonctions qui interprètent des chaînes de caractères comme du code.

### Gestion des Ressources et des Composants

- Contrôler l'intégrité des contenus internes et tiers

Vérifier l'intégrité des fichiers internes avec  des mécanismes comme les hachages. Cela garantit que les fichiers n'ont pas été altérés.

- Restreindre les contenus aux sources fiables

S’assurer que les bibliothèques et les fichiers proviennent de sources fiables pour minimiser les risques d’inclure des composants malveillants.

- Limiter les composants logiciels tiers

En réduisant l'utilisation des composants logiciels tiers au minimum nécessaire. Nous limiterons les composants pour réduire la surface d'attaque.

- Maintenir à jour les composants logiciels tiers

Des composants obsolètes peuvent contenir des failles de sécurité exploitées par des attaquants. Les maintenir à jour leur réduirait leurs exploitations

- Ne pas modifier le cœur des composants tiers

Garantir la maintenabilité et la sécurité des composants tiers en ne les modifiant pas, les modifications pouvant introduire des vulnérabilités et compliquer les futur mise a jour.

- Cloisonner les services web par domaines

Limiter la portée des attaques potentielles en utilisant différents sous-domaines pour séparer les différents services web.
