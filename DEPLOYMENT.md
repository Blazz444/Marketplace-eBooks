# 📋 Instructions de Déploiement GitHub - Marketplace eBooks

## ✅ Ce qui est déjà fait

Votre projet a été préparé et initialisé localement avec Git :
- ✅ Structure du projet créée
- ✅ Fichier HTML principal copié
- ✅ `README.md` complèt créé avec description du projet
- ✅ `.gitignore` configuré
- ✅ Repository Git initialisé localement avec le premier commit

## 🚀 Prochaines étapes pour compléter le déploiement

### Étape 1 : Créer un repo sur GitHub

1. Allez sur : **https://github.com/new**
2. Remplissez les champs :
   - **Repository name** : `marketplace-ebooks`
   - **Description** : `Plateforme de marché pour vendre et acheter des eBooks en Côte d'Ivoire`
   - **Visibility** : Public
   - **Initialize this repository with** : **Laissez tout vide** ❌ Ne cochez rien
3. Cliquez sur **Create repository**

### Étape 2 : Pousser le code (3 options)

#### Option A : Script automatisé (plus simple) ⭐ RECOMMANDÉ

**Sur Windows (PowerShell)** :
```powershell
cd C:\Users\TRUST\Desktop\marketplace-ebooks
.\deploy.bat
```

**Sur macOS/Linux ou WSL (Bash)** :
```bash
cd ~/Desktop/marketplace-ebooks
bash deploy.sh
```

Ces scripts vous demanderont votre username GitHub et feront tout automatiquement.

#### Option B : Commandes manuelles

Ouvrez un terminal PowerShell ou Command Prompt dans le dossier `C:\Users\TRUST\Desktop\marketplace-ebooks` et exécutez :

```powershell
# Remplacez 'votre-username' par votre nom d'utilisateur GitHub réel
git remote add origin https://github.com/votre-username/marketplace-ebooks.git
git branch -M main
git push -u origin main
```

Vous serez invité à vous authentifier avec GitHub (utilisez votre token d'authentification).

#### Option C : CLI GitHub (si installée)

```bash
gh repo create marketplace-ebooks --public --source=. --remote=origin --push
```

## 🔐 Authentification GitHub

Si vous avez un problème d'authentification :

### Avec HTTPS (token personnel)
1. Allez sur : **https://github.com/settings/tokens**
2. Cliquez **Generate new token (classic)**
3. Cochez ✅ `repo` et `workflow`
4. Générez le token et copiez-le
5. Quand Git demande le mot de passe, collez le token

### Avec SSH (plus sécurisé)
```powershell
# Générer une clé SSH
ssh-keygen -t ed25519 -C "votre-email@example.com"

# Ajouter la clé à l'agent SSH
ssh-add $env:USERPROFILE\.ssh\id_ed25519

# Copier la clé publique
type $env:USERPROFILE\.ssh\id_ed25519.pub | clip

# Aller sur https://github.com/settings/keys et ajouter la clé
```

Puis utilisez l'URL SSH :
```powershell
git remote add origin git@github.com:votre-username/marketplace-ebooks.git
git push -u origin main
```

## 🎉 Vérification du succès

Une fois le push complété, vérifiez :

1. **Via GitHub** : Allez sur `https://github.com/[votre-username]/marketplace-ebooks`
   - Vous devriez voir 3 fichiers : `marketplace_ebooks_complete_site.html`, `README.md`, `.gitignore`
   - `deploy.bat` et `deploy.sh` seront aussi présents

2. **Via terminal** :
   ```powershell
   git remote -v
   git log --oneline
   ```

## 📌 Commandes Git utiles

Après le déploiement, voici les commandes courantes :

```powershell
# Vérifier le statut
git status

# Faire des changements et pousser
git add .
git commit -m "Description des changements"
git push

# Voir l'historique
git log --oneline --graph --all

# Créer une nouvelle branche
git checkout -b nouvelle-fonctionnalite
git push -u origin nouvelle-fonctionnalite
```

## ❓ Troubleshooting

| Problème | Solution |
|----------|----------|
| "fatal: remote origin already exists" | Exécutez `git remote remove origin` puis réessayez |
| "Authentication failed" | Vérifiez votre token ou clé SSH |
| "repository not found" | Vérifiez que le repo existe sur GitHub et le username est correct |
| "branch is ahead of origin" | Exécutez `git push` sans les paramètres `-u origin main` |

## 🎯 Prochaines étapes optionnelles

1. **Activer GitHub Pages** (pour déployer le site en ligne) :
   - Allez sur Settings du repo → Pages
   - Branch: `main`, Folder: `/root`
   - Votre site sera accessible à : `https://[votre-username].github.io/marketplace-ebooks`

2. **Ajouter des collaborateurs** :
   - Settings → Manage access → Invite a collaborator

3. **Configurer des branches protégées** :
   - Settings → Branches → Add rule
   - Protéger la branche `main` pour éviter les modifications accidentelles

---

**Besoin d'aide?** Consultez la [documentation GitHub](https://docs.github.com/en)

