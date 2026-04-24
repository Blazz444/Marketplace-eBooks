# 🚀 Quick Start - Déployer en 2 minutes

## ⚡ La manière la plus simple

### 1. Ouvrez GitHub

Allez sur : **https://github.com/new**

Remplissez :
- **Repository name** : `marketplace-ebooks`  
- **Description** : `Marketplace pour vendre des eBooks`  
- **Public** : Oui
- **Initialize with** : ❌ Ne rien cocher

Cliquez **Create repository**

### 2. Copier l'URL

Après création, GitHub vous montre une page avec une URL. Ça ressemble à :
```
https://github.com/votre-username/marketplace-ebooks.git
```

Copiez cette URL complète.

### 3. Ouvrez PowerShell

Ouvrez **PowerShell** et naviguez vers votre projet :
```powershell
cd C:\Users\TRUST\Desktop\marketplace-ebooks
```

### 4. Collez ces 3 commandes (une par une)

Remplacez `https://github.com/votre-username/marketplace-ebooks.git` par l'URL que vous avez copiée :

```powershell
git remote add origin https://github.com/votre-username/marketplace-ebooks.git
```

Appuyez sur **Entrée**

```powershell
git branch -M main
```

Appuyez sur **Entrée**

```powershell
git push -u origin main
```

Appuyez sur **Entrée**

### 5. Authentification

Si une fenêtre apparaît, connectez-vous avec votre compte GitHub.

Si vous avez un message "password", utilisez un **Personal Access Token** :
1. Allez sur : https://github.com/settings/tokens
2. Cliquez **Generate new token (classic)**
3. Cochez ✅ `repo`
4. Cliquez **Generate token**
5. Copiez le token (vous ne le verrez plus!)
6. Collez-le quand Git demande le mot de passe

### ✅ C'est fait!

Votre code est maintenant sur GitHub à :  
**https://github.com/votre-username/marketplace-ebooks**

---

## 🤔 Vous avez un problème?

- **"repository not found"** → Vérifiez que le repo existe sur GitHub et le username est correct
- **"Authentication failed"** → Utilisez un token à la place du mot de passe
- **"remote origin already exists"** → Exécutez `git remote remove origin` puis réessayez

Consultez **DEPLOYMENT.md** pour plus de détails.

