#!/bin/bash
NOMBRE=$1
CENA=$2
HORA=$(date +"%H")
if [ "$HORA" -lt 6 ]; then # esto solo aplica 0:00 a 5:59:59
  echo "$NOMBRE, estás trabajando de madrugada... espero que puedas aprobar 🥰"
elif [ "$HORA" -lt 12 ]; then # esto solo aplica 6:00 a 11:59:59
  echo "Hola $NOMBRE, ¿qué tal el café? ☕ ¡A programar con energía!"
elif [ "$HORA" -lt 14 ]; then # esto solo aplica 12:00 a 13:59:59
  echo "¡Hora de almorzar, $NOMBRE! Espero que tu comida incluya algo más que commits 🍔"
elif [ "$HORA" -lt 16 ]; then # esto solo aplica 14:00 a 15:59:59
  echo "$NOMBRE, el código puede esperar. ¡ES HORA DE LA SIESTA! 😴"
elif [ "$HORA" -lt 18 ]; then # esto solo aplica 16:00 a 17:59:59
  echo "Seguimos a tope, $NOMBRE. ¡Que el café no falte! 🔧☕"
# elif [ "$HORA" -lt 21 ]; then # esto solo aplica 18:00 a 20:59:59
#   echo "Hola $NOMBRE, ¿cómo estuvo la cena? 🍽️ ¡Buen trabajo hoy!"
else # esto solo aplica 21:00 a 23:59:59
  echo "$NOMBRE, es tarde... no olvides descansar. 💤"
fi