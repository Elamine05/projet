#!/bin/bash

# Fonction pour compter les fichiers dans le répertoire actuel
function count_files {
    echo $(ls -1 | wc -l)
}

# Nombre correct de fichiers
correct_count=$(count_files)

# Boucle pour demander à l'utilisateur de deviner
while true; do
    echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"
    read guess

    if [[ $guess -lt $correct_count ]]; then
        echo "Trop bas, essayez à nouveau."
    elif [[ $guess -gt $correct_count ]]; then
        echo "Trop haut, essayez à nouveau."
    else
        echo "Félicitations ! Vous avez deviné correctement."
        break
    fi
done
