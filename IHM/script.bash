#!/bin/bash

URL="http://127.0.0.1:8000"

# Lancer le serveur en arrière-plan
python3 -m http.server 8000 &

# Attendre que le serveur démarre
sleep 1

# Ouvrir le navigateur selon l'OS
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    xdg-open "$URL"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    open "$URL"
else
    echo "Système non supporté"
fi

# Garder le script actif tant que le serveur tourne
wait
