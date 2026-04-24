#!/bin/bash
# Script de déploiement automatique vers GitHub pour Bash/WSL

echo "================================"
echo "Marketplace eBooks - GitHub Push"
echo "================================"
echo

# Demander le username GitHub
read -p "Entrez votre nom d'utilisateur GitHub: " GITHUB_USERNAME

# Construire l'URL du repo
REPO_URL="https://github.com/${GITHUB_USERNAME}/marketplace-ebooks.git"

echo
echo "Configuration du repo distant avec: $REPO_URL"
echo

# Ajouter la remote origin
if git remote add origin "$REPO_URL" 2>/dev/null; then
    echo "Remote 'origin' ajoutée avec succès"
else
    echo "Erreur: Impossible d'ajouter la remote. Elle existe peut-être déjà."
    echo "Vérification avec: git remote -v"
    git remote -v
    echo
    echo "Mise à jour de l'URL existante..."
    git remote set-url origin "$REPO_URL"
fi

# Renommer la branche en 'main'
echo
echo "Renommage de la branche en 'main'..."
git branch -M main

# Pousser vers GitHub
echo
echo "Envoi du code vers GitHub (cela peut prendre quelques secondes)..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo
    echo "================================"
    echo "✅ Déploiement réussi!"
    echo "================================"
    echo
    echo "Votre repo est maintenant disponible à:"
    echo "https://github.com/${GITHUB_USERNAME}/marketplace-ebooks"
    echo
    echo "Vérifiez-le dans votre navigateur!"
else
    echo
    echo "❌ ERREUR: Le push a échoué. Vérifications:"
    echo "1. Avez-vous créé le repo sur https://github.com/new?"
    echo "2. Avez-vous entré le bon username?"
    echo "3. Avez-vous configuré Git avec: git config --global user.name 'Votre Nom'"
    echo "4. Avez-vous un token d'authentification configuré?"
    exit 1
fi
