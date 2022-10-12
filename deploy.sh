#!/bin/bash

###################################################################################
#
#  description : Déploiement à la volée de conteneur docker
#
#  Auteur : Hervé
# 
#  Date : 12/10/2022
#
####################################################################################

echo "
options : 
	-  --create : Lancer des conteneurs

	-  --drop : Supprimer les conteneurs créer par le deploy.sh
        
	-  --infos : Caractéristiques des conteneurs (ip , nom , user ...)

	-  --start :  redemarrage des conteneurs

	-  --ansible : déploiement arborescence ansible
"

VAR="mavariable"
echo $VAR
