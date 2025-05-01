#!/bin/bash
set -e

echo "📄 Generando documentación con JSDoc..."
./node_modules/.bin/jsdoc -c jsdoc.json

echo "📁 Contenido antes de generar documentación:"
ls

if [ -d out ]; then
    echo "📁 Contenido después de JSDoc:"
    ls -R out

    mkdir -p docs_output

    echo "🧹 Limpiando contenido previo de docs_output/"
    rm -rf docs_output/*

    echo "📦 Moviendo documentación generada a docs_output/"
    mv out/* docs_output/
    rmdir out || true

    echo "✅ Documentación actualizada correctamente."
else
    echo "❌ No se generó el directorio 'out'"
    exit 1
fi

echo "✅ Script doc.sh finalizado"