TECHNICAL_RESOURCES.md

---

🛠️ Ressources Techniques – La Roulotte Solidaire (Toulouse)

Ce document rassemble toutes les informations techniques nécessaires pour contribuer efficacement au dépôt : organisation des fichiers, normes de nommage, formats recommandés, scripts utiles, et bonnes pratiques pour garantir cohérence, sécurité et pérennité des données.

---

📂 1. Structure du dépôt

`
📁 photos/
    📅 2024/
    📅 2025/
📁 videos/
    📅 2024/
    📅 2025/
📁 descriptions/
    📝 DESCRIPTION.md (template)
📁 scripts/
    🔧 rename.sh
    🔧 rename.ps1
📁 docs/
    📝 autorisations/
    📝 notes-techniques/
README.md
TECHNICAL_RESOURCES.md
`

---

🧩 2. Normes de nommage des fichiers

Tous les fichiers doivent suivre la convention suivante :

`
TYPEYYYY-MM-DDLIEU_DESCRIPTION.ext
`

Exemples
- photo2025-02-12Saint-Michel_distribution-soupe.jpg
- video2025-01-20Arnaud-Bernard_maraude-soir.mp4

Règles
- TYPE : photo ou video
- DATE : format AAAA-MM-JJ
- LIEU : sans espace, utiliser tirets (Saint-Michel)
- DESCRIPTION : courte, descriptive, en minuscules, tirets (distribution-soupe)
- EXT : conserver l’extension d’origine

---

📝 3. Template de description (Photo / Vidéo)

Le template complet se trouve dans descriptions/DESCRIPTION.md.

Résumé des champs :

- Titre  
- Date  
- Lieu  
- Contexte  
- Description du contenu  
- Dignité & droit à l’image  
- Tags  
- Fichiers associés  
- Auteur·rice  

---

🔧 4. Scripts de nommage automatique

Les scripts se trouvent dans scripts/.

Bash (Linux/macOS)
- rename.sh  
- Renomme tous les fichiers d’un dossier selon les normes du dépôt.

PowerShell (Windows)
- rename.ps1  
- Fonctionne sur Windows 10/11.

Bonnes pratiques
- Toujours tester sur un dossier copie avant d’appliquer sur les fichiers originaux.  
- Ne jamais renommer des fichiers déjà utilisés dans des publications externes.

---

🖼️ 5. Formats recommandés

Photos
- JPEG (.jpg) : format standard, léger, idéal pour GitHub  
- PNG (.png) : uniquement si transparence nécessaire  
- Résolution recommandée : 1920px max (pour limiter le poids)

Vidéos
- MP4 (H.264) : format universel  
- Résolution recommandée : 1080p  
- Poids maximum conseillé : < 200 Mo par fichier

---

🔒 6. Dignité, confidentialité & droit à l’image

Avant d’ajouter un fichier :

- Vérifier que la personne photographiée/filmée a donné son consentement  
- Ne jamais publier de contenu montrant :  
  - visages non floutés sans autorisation  
  - situations humiliantes ou sensibles  
  - données personnelles visibles (documents, plaques, etc.)  
- En cas de doute : ne pas publier et demander validation à l’équipe de coordination.

---

🧹 7. Nettoyage & optimisation des fichiers

Photos
- Compression recommandée :  
  - TinyJPG / TinyPNG  
  - ou compression locale (ImageMagick)

Vidéos
- Compression recommandée :  
  - HandBrake  
  - FFmpeg (ligne de commande)

Objectif
- Réduire le poids  
- Préserver la qualité  
- Faciliter la synchronisation Git

---

🧪 8. Tests & validation avant commit

Avant chaque commit :

- Vérifier le nommage  
- Vérifier la structure des dossiers  
- Vérifier la cohérence des dates  
- Vérifier la présence d’une description si nécessaire  
- Vérifier que les fichiers ne dépassent pas la taille recommandée

---

🤝 9. Contribution

Pour contribuer :

1. Créer une branche dédiée  
2. Ajouter les fichiers dans les bons dossiers  
3. Utiliser les scripts de nommage  
4. Ajouter ou mettre à jour les descriptions  
5. Ouvrir une pull request  
6. Attendre validation de l’équipe de coordination

---

📬 10. Contact technique

Pour toute question technique :  
Équipe La Roulotte Solidaire – Toulouse  
(ou via le canal interne des bénévoles)
