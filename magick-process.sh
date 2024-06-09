#!/bin/bash

# Boucle sur tous les dossiers dans le répertoire courant
for dir in */; do
  if [ -d "$dir/Imgs" ]; then
    echo "Traitement des images dans le dossier $dir/Imgs"
    magick mogrify -verbose -resize 340x480 -extent 640x480 -gravity West -background none "$dir/Imgs/*.*"
  else
    echo "Le dossier $dir/Imgs n'existe pas"
  fi
done