#!/usr/bin/env bash
set -euo pipefail

sep="-------------------------------------------------------------------"
echo "$sep"
PAGES_REPO="git@github.com:mehdi-latif/mehdi-latif.github.io.git"
DEST="public"

now=$(date +"%Y-%m-%d %H:%M:%S")
msg="Mise à jour contenu - $now"
echo "$sep"
echo "Message de commit : $msg"
echo "$sep"
# -------------------------------------------------------------------
echo "Suppression du répertoire $DEST..."
rm -rf "$DEST"
echo "$sep"
echo "Clonage du dépôt $PAGES_REPO dans $DEST..."
git clone "$PAGES_REPO" "$DEST"
echo "$sep"
# -------------------------------------------------------------------
# Sauvegarde des fichiers critiques du dépôt publié.
echo "Sauvegarde des fichiers critiques (CNAME, robots.txt, .nojekyll) du dépôt publié..."
TMP_KEEP="$(mktemp -d)"
for f in CNAME robots.txt .nojekyll; do
  if [ -f "$DEST/$f" ]; then
    cp "$DEST/$f" "$TMP_KEEP/$f"
    echo "Fichier $f sauvegardé."
  fi
done
echo "$sep"
# -------------------------------------------------------------------
# Nettoyer le site publié, mais conserver .git.
echo "Nettoyage du répertoire $DEST (sauf .git)..."
find "$DEST" -mindepth 1 \
  ! -path "$DEST/.git" \
  ! -path "$DEST/.git/*" \
  -exec rm -rf {} +

echo "Répertoire $DEST nettoyé."
echo "$sep"
# Générer le site Hugo dans public/.
hugo --gc --minify
echo "Site Hugo généré dans $DEST."
echo "$sep"
# Restaurer les fichiers critiques si Hugo ne les a pas recréés.

echo "Restauration des fichiers critiques..."
for f in CNAME robots.txt .nojekyll; do
  if [ ! -f "$DEST/$f" ] && [ -f "$TMP_KEEP/$f" ]; then
    cp "$TMP_KEEP/$f" "$DEST/$f"
    echo "Fichier $f restauré."
  fi
done
echo "$sep"
echo "Fichiers critiques restaurés."
rm -rf "$TMP_KEEP"
echo "$sep"
# Vérifications de sécurité.
echo "Vérification des fichiers critiques..."
test -f "$DEST/CNAME" || { echo "ERREUR : $DEST/CNAME absent"; exit 1; }
test -f "$DEST/robots.txt" || { echo "ERREUR : $DEST/robots.txt absent"; exit 1; }
echo "$sep"
cd "$DEST"

git add -A
echo "Vérification des modifications..."
if git diff --cached --quiet; then
  echo "Aucune modification à publier."
else
  git commit -m "$msg"
  git push
  echo "Modifications publiées avec succès."
fi
echo "$sep"
cd ..
echo "Déploiement terminé."
echo "Message de commit : $msg"
echo "Répertoire de destination : $DEST"
echo "Dépôt GitHub : $PAGES_REPO"
echo "$sep"