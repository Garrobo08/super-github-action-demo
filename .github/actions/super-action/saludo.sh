#!/bin/bash
NOMBRE=$1
CENA=$2
HORA=$(date +"%H")
if [ "$HORA" -lt 12 ]; then
  echo "Hola $NOMBRE, ¿qué tal el café? ☕"
elif [ "$HORA" -lt 20 ]; then
  echo "Hola $NOMBRE, ¿qué tal la cena de $CENA? 🍽️"
else
  echo "$NOMBRE, no tardes mucho en irte a dormir 😴"
fi