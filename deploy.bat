@echo off
REM Script de déploiement automatique vers GitHub
REM Ce script pousse votre marketplace-ebooks vers GitHub

echo ================================
echo Marketplace eBooks - GitHub Push
echo ================================
echo.

REM Demander le username GitHub
set /p GITHUB_USERNAME="Entrez votre nom d'utilisateur GitHub: "

REM Construire l'URL du repo
set REPO_URL=https://github.com/%GITHUB_USERNAME%/marketplace-ebooks.git

echo.
echo Configuration du repo distant avec: %REPO_URL%
echo.

REM Ajouter la remote origin
git remote add origin %REPO_URL%

if errorlevel 1 (
    echo.
    echo Erreur: Impossible d'ajouter la remote. Elle existe peut-être déjà.
    echo Vérification avec: git remote -v
    git remote -v
    echo.
    echo Tentative de mise à jour de l'URL existante...
    git remote set-url origin %REPO_URL%
)

REM Renommer la branche en 'main'
echo.
echo Renommage de la branche en 'main'...
git branch -M main

REM Pousser vers GitHub
echo.
echo Envoi du code vers GitHub (cela peut prendre quelques secondes)...
git push -u origin main

if errorlevel 1 (
    echo.
    echo ERREUR: Le push a échoué. Vérifications:
    echo 1. Avez-vous créé le repo sur https://github.com/new?
    echo 2. Avez-vous entré le bon username?
    echo 3. Avez-vous configuré Git avec: git config --global user.name "Votre Nom"
    echo 4. Avez-vous un token d'authentification configuré?
    echo.
    pause
    exit /b 1
)

echo.
echo ================================
echo SUCCESS! Deployment completed
echo ================================
echo.
echo Votre repo est maintenant disponible à:
echo https://github.com/%GITHUB_USERNAME%/marketplace-ebooks
echo.
echo Vérifiez-le dans votre navigateur!
echo.
pause
