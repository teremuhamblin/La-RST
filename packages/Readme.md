Créer un package officiel “La‑RST‑Docs” parfaitement adapté à ton dépôt, à ton organisation, et à l’usage associatif de La Roulotte Solidaire.

Je vais te donner :

1. Le concept du package  
2. La structure recommandée  
3. Le fichier package.json ou metadata adapté à GitHub Packages  
4. Le workflow GitHub Actions pour publier automatiquement le package  
5. Comment l’utiliser côté bénévoles

Tout sera clair, propre, professionnel et directement exploitable.

---

🌟 1. Concept du package “La‑RST‑Docs”

Le package La‑RST‑Docs est un package GitHub officiel contenant :

- les documents validés  
- les guides finalisés  
- les PDF générés automatiquement  
- les chartes graphiques  
- les modèles administratifs  
- les ressources publiques de l’association  

🎯 Objectif :  
Permettre aux bénévoles, partenaires et responsables de télécharger la dernière version officielle des documents en un seul endroit.

---

🗂️ 2. Structure recommandée du package

Dans ton dépôt, crée un dossier :

`
packages/
└── la-rst-docs/
    ├── docs/
    │   ├── guides/
    │   ├── officiels/
    │   ├── identite/
    │   └── technique/
    ├── README.md
    └── package.json
`

Le dossier docs/ sera rempli automatiquement par ton workflow de génération de PDF/HTML.

---

📦 3. Fichier package.json pour GitHub Packages

📁 packages/la-rst-docs/package.json

`json
{
  "name": "@teremuhamblin/la-rst-docs",
  "version": "1.0.0",
  "description": "Package officiel des documents validés de La Roulotte Solidaire Toulouse.",
  "repository": {
    "type": "git",
    "url": "https://github.com/teremuhamblin/La-RST.git"
  },
  "author": "La Roulotte Solidaire Toulouse",
  "license": "SEE LICENSE IN Licence.rst",
  "files": [
    "docs/"
  ]
}
`

Ce format est compatible GitHub Packages même si tu n’utilises pas Node.

---

🤖 4. Workflow GitHub Actions pour publier automatiquement le package

📁 .github/workflows/publish-docs-package.yml

Ce workflow :

- génère les PDF/HTML  
- met à jour packages/la-rst-docs/docs/  
- publie le package sur GitHub Packages  
- crée une version propre et téléchargeable  

`yaml
name: Publier le package La-RST-Docs

on:
  push:
    branches:
      - main
    paths:
      - "Guides/"
      - "Document officiel/"
      - "Identité visuelle/"
      - "Ressource technique/"
      - "Sécurité.md"
      - "Readme.md"

jobs:
  build-and-publish:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Installer Pandoc
        run: sudo apt-get update && sudo apt-get install -y pandoc

      - name: Générer les PDF et HTML
        run: |
          mkdir -p packages/la-rst-docs/docs
          find "Guides" -name "*.md" -exec pandoc {} -o packages/la-rst-docs/docs/$(basename {} .md).pdf \;
          find "Document officiel" -name "*.md" -exec pandoc {} -o packages/la-rst-docs/docs/$(basename {} .md).pdf \;

      - name: Configurer npm pour GitHub Packages
        run: |
          echo "//npm.pkg.github.com/:authToken=${{ secrets.GITHUBTOKEN }}" > ~/.npmrc

      - name: Publier le package
        run: |
          cd packages/la-rst-docs
          npm version patch
          npm publish --registry=https://npm.pkg.github.com
`

---

📥 5. Comment les bénévoles peuvent télécharger le package

Ils peuvent récupérer la dernière version via :

Option A — Téléchargement direct
GitHub → Packages → @teremuhamblin/la-rst-docs → Download

Option B — Installation via npm
Pour les bénévoles techniques :

`
npm install @teremuhamblin/la-rst-docs --registry=https://npm.pkg.github.com
`

Option C — Lien direct dans le README
Je peux t’ajouter un badge “Package officiel”.

---

🎯 Résultat

Avec ce package :

- tu as un point central pour les documents validés  
- les bénévoles téléchargent toujours la dernière version  
- les documents sont générés automatiquement  
- le dépôt reste propre  
- l’association gagne en professionnalisme
