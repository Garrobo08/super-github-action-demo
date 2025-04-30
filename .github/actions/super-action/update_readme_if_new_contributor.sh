#!/bin/bash

# Ruta al archivo donde guardamos los contribuidores ya conocidos
CONTRIB_FILE=".github/contribuidores.txt"
CONTRIB_TEMP=".github/contribuidores_actuales.txt"

# Obtenemos la lista actual de contribuidores del historial de commits
git log --format='%aN|%aE' | sort | uniq > "$CONTRIB_TEMP"

# Si no existe el archivo original, lo creamos (primera ejecución)
if [ ! -f "$CONTRIB_FILE" ]; then
  echo "🆕 Primera vez, guardando lista de contribuidores y generando README..."
  cp "$CONTRIB_TEMP" "$CONTRIB_FILE"
  bash .github/actions/super-action/readme.sh
  exit 0
fi

# Comparamos con la lista anterior
if ! diff -q "$CONTRIB_FILE" "$CONTRIB_TEMP" > /dev/null; then
  echo "👥 Nuevos contribuidores detectados. Actualizando README.md..."
  cp "$CONTRIB_TEMP" "$CONTRIB_FILE"
  bash .github/actions/super-action/update_readme.sh
else
  echo "✅ Lista de contribuidores sin cambios. README.md no se actualiza."
fi
