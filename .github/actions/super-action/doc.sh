#!/bin/bash
set -e  # Detener en el primer error

echo "📄 Generando documentación con JSDoc..."
./node_modules/.bin/jsdoc -c jsdoc.json

echo "📁 Contenido antes de generar documentación:"
ls

# Verificar si se generó el directorio 'out'
if [ -d out ]; then
    echo "📁 Contenido después de JSDoc:"
    ls -R out

    mkdir -p docs_output

    if [ "$(ls -A out)" ]; then
        mv out/* docs_output/
        echo "✅ Documentación movida a docs_output/"
    else
        echo "⚠️ El directorio 'out' está vacío. Nada que mover."
    fi

    rmdir out || echo "ℹ️ No se pudo eliminar 'out', puede que no esté vacío."
else
    echo "❌ No se generó el directorio 'out'"
    exit 1
fi

echo "✅ Script doc.sh finalizado"