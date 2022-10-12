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

# Option de --create
if [ "$1" == "--create" ]; then
	echo ""
	echo "Creation d'un conteneur"
	echo ""

	docker run -tid --name $USERNAME-alpine alpine:latest 
# Option de supression
elif [ "$1" == "--drop" ]; then
	echo ""
	echo "Suppression"
	echo ""

	docker rm -f $USERNAME-alpine

# Option d'information	
elif [ "$1" == "--infos" ]; then
	echo ""
	echo "Info"
	echo ""
# Option de startup 
elif [ "$1" == "--stat" ]; then
	echo ""
	echo "Start"
	echo ""
# Option ansible
elif [ "$1" == "--ansible" ]; then
	echo ""
	echo "Ansible"
	echo ""
# Si aucune option affichage de l'aide
else
	echo "
options : 
	-  --create : Lancer des conteneurs

	-  --drop : Supprimer les conteneurs créer par le deploy.sh
        
	-  --infos : Caractéristiques des conteneurs (ip , nom , user ...)

	-  --start :  redemarrage des conteneurs

	-  --ansible : déploiement arborescence ansible
"
fi
