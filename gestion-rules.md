# Règle de gestion

## Visite du site pire2pire.com

- Le visteur peut avoir accès à la page d'accueil de l'application web.
- Le visteur peut prendre connaissance des services proposés par pire2pire.

## Inscription aux services

- Le visiteur peut s'inscrire et devient alors un apprenant ou un formateur.
    - Le visiteur s'inscrira via un formulaire en renseignant ses données personnelles.

## Connexion

- Il existe deux profils : apprenant et formateur.
- L'apprenant ou le formateur peut se connecter via un formulaire de connexion.
    - L'apprenant ou le formateur devra renseigner son email et son mot de passe afin de s'authentifier.
- L'apprenant est caractérisé par un numéro d’inscription unique, un nom, un prénom, une adresse et une date de naissance.
- Le formateur est caractérisé par un numéro d’inscription unique, un code, un nom et un prénom.

## Suppression de compte 

- Un apprenant peut supprimer son compte personnel de la plateforme.

## Gestion des leçons

- La leçon doit contenir :
    - un titre
    - un auteur (formateur)
    - un objectif pédagogique
    - une seule vidéo
    - un ou plusieurs paragraphes
    - un ou plusieurs tags.
- La leçon peut contenir une ou plusieurs images.    
- Le formateur peut créer une ou plusieurs leçons.
- Le formateur peut modifier les leçons qu'il a créées.
- Le formateur peut supprimer les leçons qu'il a créées.
- La leçon peut être rattachée à aucun ou plusieurs modules.
- Si une leçon est supprimée, alors cette dernière disparaitra du ou des modules et formations auxquels elle est rattachée.

## Gestion des modules 

- Le module doit contenir : 
    - un titre
    - un auteur (formateur)
    - au minimum une leçon
    - un objectif pédagogique
    - un ou plusieurs tags.
- Le module peut contenir plusieurs leçons.
- Le modules peut être rattaché à aucune ou plusieurs formations.
- Le formateur peut créer un ou plusieurs modules.
- Le formateur peut modifier les modules qu'il a créés.
- Le formateur peut supprimer les modules qu'il a créés.
- Si un module est supprimé, alors ce dernier disparaitra de la ou des formations auxquelles il est rattaché.
- Si un module est supprimé, cela n'entraine pas la suppression de la ou des leçons qui étaient rattachées à ce dernier.

## Gestion des formations par les formateurs

- La formation doit contenir : 
    - un titre
    - un auteur (formateur)
    - au minimum un module
    - un objectif pédagogique
    - un ou plusieurs tags.
- Le formateur peut créer une ou plusieurs formations.
- Le formateur peut modifier les formations qu'il a créées.
- Le formateur peut supprimer les formations qu'il a créées.
- Si une formation est supprimée, alors les apprenants inscrits à cette formation n'y auront plus accès.
- Si une formation est supprimée, cela n'entraine pas la suppression du ou des modules qui étaient rattachés à cette dernière.

## Gestion des formations par les apprenants 

- Un apprenant peut s'inscrire à une ou plusieurs formations.
- Un apprenant peut valider manuellement, s'il le souhaite, certains modules présents dans une formation qu'il maîtrise déjà.
- Un apprenant est évalué à chaque module avec un statut : "OK" si c'est validé et "KO" si ça ne l'est pas. 
- Une formation est considérée comme terminée lorsque tous les modules ont été validés.