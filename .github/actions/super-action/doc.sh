#!/bin/bash

echo "🧹 Eliminando documentación anterior..."
rm -rf docs_output out

echo "📄 Generando documentación con JSDoc..."
./node_modules/.bin/jsdoc -c jsdoc.json 

echo "📁 Contenido antes de generar documentación:"
ls -R

echo "📁 Contenido después de JSDoc:"
ls -R out || echo "❌ No se generó el directorio 'out'"

mkdir -p docs_output
mv out/* docs_output/ || echo "❌ No se pudo mover documentación"
