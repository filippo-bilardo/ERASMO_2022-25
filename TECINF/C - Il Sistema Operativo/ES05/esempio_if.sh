#!/bin/bash

if ls /bindddddddddd > /dev/null 2>&1;
then
    echo "Comando eseguito con successo"
    # Comandi da eseguire se 'comando' ha successo
else
    echo "Comando fallito"
    # Comandi da eseguire se 'comando' fallisce
fi
