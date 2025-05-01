#!/bin/bash

echo "🔄 Generando README.md con información del proyecto..."

# Cabecera e info del proyecto
cat <<EOL > README.md
# 🚀 Mi Proyecto

Este es un proyecto de ejemplo que genera documentación automáticamente usando **JSDoc**, corrige el formato de código con **Prettier** y saluda de manera personalizada, todo automatizado con **GitHub Actions**.

## 🔧 Descripción

Este proyecto es un ejemplo de automatización usando **GitHub Actions** para realizar varias tareas importantes de manera automática:
- Generación de documentación con **JSDoc** 📚.
- Corrección automática de errores de formato con **Prettier** 🔧.
- Saludo personalizado según la hora del día 🕒.
- Actualización automática del archivo \`README.md\` 📝.

## 📚 Documentación Generada

La documentación generada por **JSDoc** está disponible [aquí](./docs_output/index.html). Esta documentación es actualizada automáticamente cada vez que se realiza un push.

## 🛠️ Instalación

\`\`\`bash
npm install
\`\`\`

## 🚀 Uso

\`\`\`bash
git add .
\`\`\`

\`\`\`bash
git commit -m "mensaje"
\`\`\`

- En caso de que el push no se pueda realizar, use el siguiente comando antes del push:

\`\`\`bash
git pull origin main
\`\`\`

\`\`\`bash
git push origin main
\`\`\`

## 📝 Esquema del Proyecto

- Formato de código con **Prettier**
- Documentación con **JSDoc**
- Saludo personalizado con GitHub Actions
- Actualización automática de este README

## 📦 Contribuciones

Si deseas contribuir a este proyecto, ¡haz un cambio y sube tu commit! 

## 🙌 Contribuidores

EOL

# Añadir contribuidores desde el archivo
echo "" >> README.md
echo "A continuación, una lista de personas que han contribuido hasta ahora:" >> README.md
echo "" >> README.md

while IFS='|' read -r nombre email; do
  # Puedes añadir enlaces a los perfiles de GitHub si lo deseas con más lógica.
  echo "- $nombre <$email>" >> README.md
done < .github/contribuidores.txt

echo "✅ README.md actualizado con lista de contribuidores."

echo "# Hola " >> .gitignore
