#!/bin/sh

read -p "entreprise: " entreprise
read -p "poste: " poste
ident=`date +%Y%m%d`_"$entreprise"_"$poste"
echo "processing $ident"

WORK=/d/donnees/fhollender/perso/cv
[[ ! -d "$WORK" ]] && echo "[ERR] repertoire inconnu: $WORK" && return 1
[[ -d "$WORK/$ident" ]] && echo "[ERR]repertoire existant: $WORK/$ident" && return 1

WORKFILE=$WORK/$ident/ANN_$ident.odt
[[ -f "$WORKFILE" ]] && echo "[ERR] fichier existant: $WORKFILE" && return 1

MODELE=/d/donnees/fhollender/dev/home/annonce_vide.odt
[[ ! -f "$MODELE" ]] && echo "[ERR] fichier inconnu: $MODELE" && return 1

SOFFICE='/c/Program Files/OpenOffice.org 3/program/swriter.exe'
cd '/c/Program Files/OpenOffice.org 3/program/'

mkdir $WORK/$ident
cp $MODELE $WORKFILE
swriter -o $WORKFILE &

cd -

