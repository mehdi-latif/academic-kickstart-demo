#!/usr/bin/env bash
set -euo pipefail

sep="-------------------------------------------------------------------"

PAGES_REPO="git@github.com:mehdi-latif/mehdi-latif.github.io.git"
DEST="public"
BUILD_DIR="$(mktemp -d)"

now=$(date +"%Y-%m-%d %H:%M:%S")
msg="Mise à jour contenu - $now"

cleanup() {
  rm -rf "$BUILD_DIR"
}
trap cleanup EXIT

echo "$sep"
echo "Message de commit : $msg"
echo "Dépôt GitHub Pages : $PAGES_REPO"
echo "Répertoire publié  : $DEST"
echo "Build temporaire   : $BUILD_DIR"
echo "$sep"

# -------------------------------------------------------------------
# 1. Génération Hugo dans un répertoire temporaire.
#    Important : on ne génère pas directement dans public/ pour éviter
#    les conflits avec l'ancien dépôt publié.
# -------------------------------------------------------------------
echo "Génération du site Hugo dans un dossier temporaire..."
hugo --gc --minify --destination "$BUILD_DIR"
echo "Site Hugo généré dans $BUILD_DIR."
echo "$sep"

# -------------------------------------------------------------------
# 2. Fichiers critiques GitHub Pages.
#    Hugo copie normalement static/CNAME, static/robots.txt, static/.nojekyll.
#    Mais on sécurise explicitement leur présence.
# -------------------------------------------------------------------
echo "Vérification des fichiers critiques GitHub Pages..."

if [ ! -f "$BUILD_DIR/CNAME" ]; then
  if [ -f "static/CNAME" ]; then
    cp "static/CNAME" "$BUILD_DIR/CNAME"
  else
    printf "mlatif.fr\n" > "$BUILD_DIR/CNAME"
  fi
fi

if [ ! -f "$BUILD_DIR/robots.txt" ]; then
  if [ -f "static/robots.txt" ]; then
    cp "static/robots.txt" "$BUILD_DIR/robots.txt"
  elif [ -f "static/robot.txt" ]; then
    echo "Attention : static/robot.txt trouvé. Copie vers robots.txt."
    cp "static/robot.txt" "$BUILD_DIR/robots.txt"
  else
    cat > "$BUILD_DIR/robots.txt" <<'ROBOTS'
User-agent: *
Disallow:

Sitemap: https://mlatif.fr/sitemap.xml
ROBOTS
  fi
fi

touch "$BUILD_DIR/.nojekyll"

test -f "$BUILD_DIR/CNAME" || { echo "ERREUR : CNAME absent du build"; exit 1; }
test -f "$BUILD_DIR/robots.txt" || { echo "ERREUR : robots.txt absent du build"; exit 1; }
test -f "$BUILD_DIR/.nojekyll" || { echo "ERREUR : .nojekyll absent du build"; exit 1; }
test -f "$BUILD_DIR/index.html" || { echo "ERREUR : index.html racine absent"; exit 1; }
test -f "$BUILD_DIR/404.html" || { echo "Attention : 404.html absent du build. Les anciennes URLs ne seront pas redirigées."; exit 1; }
# test -f "$BUILD_DIR/fr/404/index.html" || { echo "ERREUR : page /fr/404/ absente"; exit 1; }
# test -f "$BUILD_DIR/en/404/index.html" || { echo "ERREUR : page /en/404/ absente"; exit 1; }

echo "Fichiers critiques présents."
echo "$sep"

# -------------------------------------------------------------------
# 3. Vérification explicite de l'avatar.
#    Le problème observé vient d'une différence de casse dans l'URL auteur
#    entre le HTML et le dossier publié. Ici on vérifie que les images
#    référencées par les pages d'accueil existent réellement dans le build.
# -------------------------------------------------------------------
check_avatar_references() {
  local html_file="$1"

  if [ ! -f "$html_file" ]; then
    echo "Attention : fichier HTML introuvable pour vérification avatar : $html_file"
    return 0
  fi

  local refs
  refs=$(grep -oE 'src="[^"]*/author/[^"]*/avatar_[^"]+\.jpg"' "$html_file" \
    | sed -E 's/^src="//; s/"$//' \
    | sort -u || true)

  if [ -z "$refs" ]; then
    echo "Attention : aucune référence avatar détectée dans $html_file"
    return 0
  fi

  echo "$refs" | while IFS= read -r ref; do
    # Les références sont absolues, par exemple /en/author/Mehdi-LATIF/avatar_...
    local path="$BUILD_DIR$ref"
    if [ ! -f "$path" ]; then
      echo "ERREUR : avatar référencé mais absent du build : $ref"
      echo "Chemin attendu : $path"
      exit 1
    fi
    echo "Avatar vérifié : $ref"
  done
}

echo "Vérification des avatars référencés..."
check_avatar_references "$BUILD_DIR/fr/index.html"
check_avatar_references "$BUILD_DIR/en/index.html"
echo "Vérification avatar terminée."
echo "$sep"

# -------------------------------------------------------------------
# 4. Clonage du dépôt GitHub Pages.
# -------------------------------------------------------------------
echo "Suppression de l'ancien répertoire $DEST..."
rm -rf "$DEST"

echo "Clonage du dépôt publié dans $DEST..."
git clone "$PAGES_REPO" "$DEST"
echo "$sep"

# -------------------------------------------------------------------
# 5. Nettoyage Git propre.
#    On utilise git rm pour que les suppressions et changements de casse
#    soient correctement enregistrés.
# -------------------------------------------------------------------
cd "$DEST"

# Important sur macOS : il faut désactiver l'ignorance de casse pour que
# Git enregistre les changements mehdi-latif <-> Mehdi-LATIF.
git config core.ignorecase false

echo "Nettoyage Git du dépôt publié..."
git rm -r --ignore-unmatch . >/dev/null 2>&1 || true

# Nettoyage des fichiers non suivis en conservant .git.
find . -mindepth 1 \
  ! -path "./.git" \
  ! -path "./.git/*" \
  -exec rm -rf {} +

cd ..
echo "Dépôt publié nettoyé."
echo "$sep"

# -------------------------------------------------------------------
# 6. Copie du nouveau site dans public/.
# -------------------------------------------------------------------
echo "Copie du build vers $DEST..."
cp -a "$BUILD_DIR"/. "$DEST"/
echo "Copie terminée."
echo "$sep"

# -------------------------------------------------------------------
# 7. Vérifications finales dans public/.
# -------------------------------------------------------------------
echo "Vérification finale des fichiers critiques..."
test -f "$DEST/CNAME" || { echo "ERREUR : $DEST/CNAME absent"; exit 1; }
test -f "$DEST/robots.txt" || { echo "ERREUR : $DEST/robots.txt absent"; exit 1; }
test -f "$DEST/.nojekyll" || { echo "ERREUR : $DEST/.nojekyll absent"; exit 1; }
test -f "$DEST/index.html" || { echo "ERREUR : $DEST/index.html absent"; exit 1; }
test -f "$DEST/404.html" || { echo "Attention : $DEST/404.html absent. Les anciennes URLs ne seront pas redirigées."; exit 1; }


echo "Vérification finale des avatars publiés..."
for html_file in "$DEST/fr/index.html" "$DEST/en/index.html"; do
  if [ -f "$html_file" ]; then
    refs=$(grep -oE 'src="[^"]*/author/[^"]*/avatar_[^"]+\.jpg"' "$html_file" \
      | sed -E 's/^src="//; s/"$//' \
      | sort -u || true)

    if [ -n "$refs" ]; then
      echo "$refs" | while IFS= read -r ref; do
        test -f "$DEST$ref" || {
          echo "ERREUR : avatar référencé mais absent dans public : $ref"
          exit 1
        }
        echo "Avatar publié vérifié : $ref"
      done
    fi
  fi
done

echo "Vérifications finales OK."
echo "$sep"

# -------------------------------------------------------------------
# 8. Commit et push.
# -------------------------------------------------------------------
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

cd ..

echo "$sep"
echo "Déploiement terminé."
echo "Message de commit : $msg"
echo "$sep"
