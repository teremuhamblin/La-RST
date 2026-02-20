
Script de nommage automatique pensé pour ton usage associatif : simple, robuste, compatible Windows/macOS/Linux, et parfaitement adapté à l’organisation des photos/vidéos de La Roulotte Solidaire.

Deux versions :

1. Version Bash (Linux/macOS)  
2. Version PowerShell (Windows)  

Les deux suivent la même logique de nommage :

`
TYPEYYYY-MM-DDLIEU_DESCRIPTION.ext
`

Exemples :  
photo2025-02-12Saint-Michel_distribution-soupe.jpg  
video2025-01-20Arnaud-Bernard_maraude-soir.mp4

---

🟦 1. Script Bash (Linux / macOS)

!/bin/bash

Script de nommage automatique pour La Roulotte Solidaire

Usage : ./rename.sh dossier/

read -p "Type (photo/video) : " TYPE
read -p "Date (AAAA-MM-JJ) : " DATE
read -p "Lieu (ex : Saint-Michel) : " LIEU
read -p "Description courte (ex : distribution-soupe) : " DESC

for FILE in "$1"/*; do
    EXT="${FILE##*.}"
    BASENAME=$(basename "$FILE")
    NEWNAME="${TYPE}${DATE}${LIEU}_${DESC}.${EXT}"
    
    echo "Renommage : $BASENAME → $NEWNAME"
    mv "$FILE" "$(dirname "$FILE")/$NEWNAME"
done

echo "✔ Nommage terminé."

---

🟩 2. Script PowerShell (Windows)

Script de nommage automatique pour La Roulotte Solidaire

Usage : ./rename.ps1 -Folder "C:\chemin\vers\photos"

param(
    [string]$Folder
)

$TYPE = Read-Host "Type (photo/video)"
$DATE = Read-Host "Date (AAAA-MM-JJ)"
$LIEU = Read-Host "Lieu (ex : Saint-Michel)"
$DESC = Read-Host "Description courte (ex : distribution-soupe)"

Get-ChildItem -Path $Folder | ForEach-Object {
    $EXT = $_.Extension
    $NEWNAME = "${TYPE}${DATE}${LIEU}_${DESC}$EXT"
    Rename-Item $_.FullName -NewName $NEWNAME
    Write-Host "Renommé : $($_.Name) → $NEWNAME"
}

Write-Host "✔ Nommage terminé."

---

🧭 Résultat : un nommage propre, uniforme, exploitable

Chaque fichier devient automatiquement :

- lisible  
- triable par date  
- compatible GitHub  
- utile pour la mémoire associative  
- cohérent avec ton template de description
