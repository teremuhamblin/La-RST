#!/bin/bash

# Script de nommage automatique pour La Roulotte Solidaire
# Usage : ./rename.sh dossier/

read -p "Type (photo/video) : " TYPE
read -p "Date (AAAA-MM-JJ) : " DATE
read -p "Lieu (ex : Saint-Michel) : " LIEU
read -p "Description courte (ex : distribution-soupe) : " DESC

for FILE in "$1"/*; do
    EXT="${FILE##*.}"
    BASENAME=$(basename "$FILE")
    NEWNAME="${TYPE}_${DATE}_${LIEU}_${DESC}.${EXT}"
    
    echo "Renommage : $BASENAME → $NEWNAME"
    mv "$FILE" "$(dirname "$FILE")/$NEWNAME"
done

echo "✔ Nommage terminé."
