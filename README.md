# Système de GPO pour poste linux.

## Synopsys

Ce repository contient les scripts permettant de configurer les postes ubuntu de créative. 

Un job est installé sur les postes qui pull toute les heure la branche master et l'exécute sur les postes pour les mettre à jour.

/!\ Réaliser une copie de ce repository dans votre infrastructure /!\

## Fonctionnement

Les points d'entrée sont les scripts suivants :

Mise à jour du repo: `gpo-update.sh`

Application des GPO: `gpo-apply.sh`

Le repository est cloné dans le patch /root/gpo/linux-gpo de chaque poste. Un job systemd exécute les scripts toute les heures.

## Mise à jour

Pour ajouter un script ou playbook ansible, ajoutez un dossier en donnant un nom significatif à votre gpo et pointer dans le script apply.sh la commande à éxécuter pour lancer la GPO.

Pensez à installer les dépendances dans `gpo-pre-requisite.sh`
