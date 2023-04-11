#!/bin/bash

# Configuration des variables
LOG_FILE=/var/log/secure
ALERT_EMAIL=security@mondomaine.com
ALERT_SUBJECT="Alerte de sécurité : Activité suspecte détectée"
ALERT_MESSAGE="Une activité suspecte a été détectée sur le système :"

# Surveillance de l'activité du système en temps réel
tail -f $LOG_FILE | while read LINE
do
  # Recherche de mots clés suspects dans les logs
  if [[ "$LINE" == *"Failed password"* || "$LINE" == *"Invalid user"* || "$LINE" == *"authentication failure"* ]]
  then
    # Envoi d'une alerte par email
    echo "$ALERT_MESSAGE $LINE" | mail -s "$ALERT_SUBJECT" $ALERT_EMAIL
  fi
done
