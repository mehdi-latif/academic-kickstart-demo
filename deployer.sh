#!/bin/bash
now=$(date +"%D %T")
msg="Mise à jour contenu - $now"
# -------------------------------------------------------------------
rm -rf public
git clone git@github.com:mehdi-latif/mehdi-latif.github.io.git public
hugo
cd public
git add .
git commit -m "$msg"
git add .
git push
cd ..
# -------------------------------------------------------------------
