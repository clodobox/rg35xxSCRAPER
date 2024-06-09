@echo off
setlocal enabledelayedexpansion

rem Boucle sur tous les dossiers dans le répertoire courant
for /d %%d in (*) do (
    if exist "%%d\Imgs" (
        echo Traitement des images dans le dossier %%d\Imgs
        magick mogrify -verbose -resize 340x480 -extent 640x480 -gravity West -background none "%%d\Imgs\*.*"
    ) else (
        echo Le dossier %%d\Imgs n'existe pas
    )
)

endlocal
pause