# Règle de gestion

### Visite du site pire2pire.com

- Le visteur peut avoir accès à la page d'accueil de l'application web.
- Le visteur peut prendre connaissance des services proposés par pire2pire.

### Inscription aux services

- Le visiteur peut s'inscrire et devient alors un apprenant ou un formateur.
    - Le visiteur s'inscrira via un formulaire en renseignant ses données personnelles.

### Connexion

- Il existe deux profils : apprenant et formateur.
- L'apprenant ou le formateur peut se connecter via un formulaire de connexion.
    - L'apprenant ou le formateur devra renseigner son email et son mot de passe afin de s'authentifier.
- L'apprenant est caractérisé par un numéro d’inscription unique, un nom, un prénom, une adresse et une date de naissance.
- Le formateur est caractérisé par un numéro d’inscription unique, un code, un nom et un prénom.

### Suppression de compte 

- Un apprenant peut supprimer son compte personnel de la plateforme.

### Gestion des leçons

- La leçon, lorsque publiée, doit contenir :
    - un titre
    - un auteur (formateur)
    - un objectif pédagogique
    - une seule vidéo
    - une ou plusieurs images
    - un ou plusieurs paragraphes
    - un ou plusieurs tags.
- La leçon doit avoir l'un des trois status suivant : 
    - Draft (brouillon) : la leçon est en cours de rédaction par le formateur et n'est pas rendu visible pour les apprenants.
    - Published (publiée) : la leçon est rédigée et visible pour les apprenants
    - Archived (archivée) : la leçon reste uniquement visible pour les apprenants s'étant inscrit à une formation qui possédait un module dans lequel se trouvait cette leçon.
- La leçon est créée par un formateur.
- La leçon peut être modifiée par le formateur qui l'a créée.
- La leçon peut être archivée par le formateur qui l'a créée.
- La leçon peut être entièrement agnostique, c'est-à-dire rattachée à aucun modules.
- La leçon peut être rattachée à un ou plusieurs modules.

### Gestion des modules 

- Le module, lorsque publié, doit contenir : 
    - un titre
    - un auteur (formateur)
    - au minimum une leçon
    - un objectif pédagogique
    - un ou plusieurs tags.
- Le module doit avoir l'un des trois status suivant : 
    - Draft (brouillon) : le module est en cours de rédaction par le formateur et n'est pas rendu visible pour les apprenants.
    - Published (publié) : le module est rédigée et visible pour les apprenants
    - Archived (archivé) : le module reste uniquement visible pour les apprenants s'étant inscrit à une formation qui possédait ce module, sinon il ne sera plus visible pour les prochains inscrit à une formation qui contenait ce module.
- Le module peut contenir une ou plusieurs leçons.
- Le module peut être rattaché à aucune formation. 
- Le modules peut être rattaché à une ou plusieurs formations.
- Le module peut être modifié par le formateur qui l'a créé.
- Le module peut être archivé par le formateur qui l'a créé.
- Si un module est archivé, cela n'entraine pas l'archivage de la ou des leçons qui étaient rattachées à ce dernier.

### Gestion des formations par les formateurs

- La formation, lorsque publiée doit contenir : 
    - un titre
    - un auteur (formateur)
    - au minimum un module
    - un objectif pédagogique
    - un ou plusieurs tags.
- La formation doit avoir l'un des trois status suivant : 
    - Draft (brouillon) : la formation est en cours de rédaction par le formateur et n'est pas rendu visible pour les apprenants.
    - Published (publiée) : la formation est rédigée et visible pour les apprenants
    - Archived (archivée) : la formation reste uniquement visible pour les apprenants s'étant inscrit à celle-ci, sinon elle ne sera plus visible.
- La formation peut contenir un ou plusieurs modules.
- La formation peut être modifiée par le formateur qui l'a créée.
- La formation peut être archivée par le formateur qui l'a créée.
- Si une formation est archivée, alors les apprenants déjà inscrits à cette formation garderont un accès, mais cette dernière ne sera plus visible pour les autres apprenants qui n'étaient pas inscrits.
- Si une formation est archivée, cela n'entraine pas l'archivage du ou des modules qui étaient rattachés à cette dernière.

### Gestion des formations par les apprenants 

- Un apprenant peut s'inscrire à une ou plusieurs formations.
- Un apprenant peut valider manuellement, s'il le souhaite, certains modules présents dans une formation qu'il maîtrise déjà.
- Un apprenant est évalué à chaque leçon avec un statut : "OK" si c'est validé et "KO" si ça ne l'est pas.
- Un module est validé lorsque toutes les leçons à l'intérieur ont un status "OK".
- Une formation est considérée comme terminée lorsque tous les modules ont été validés.