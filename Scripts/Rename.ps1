# Script de nommage automatique pour La Roulotte Solidaire
# Usage : ./rename.ps1 -Folder "C:\chemin\vers\photos"

param(
    [string]$Folder
)

$TYPE = Read-Host "Type (photo/video)"
$DATE = Read-Host "Date (AAAA-MM-JJ)"
$LIEU = Read-Host "Lieu (ex : Saint-Michel)"
$DESC = Read-Host "Description courte (ex : distribution-soupe)"

Get-ChildItem -Path $Folder | ForEach-Object {
    $EXT = $_.Extension
    $NEWNAME = "${TYPE}_${DATE}_${LIEU}_${DESC}$EXT"
    Rename-Item $_.FullName -NewName $NEWNAME
    Write-Host "Renommé : $($_.Name) → $NEWNAME"
}

Write-Host "✔ Nommage terminé."
