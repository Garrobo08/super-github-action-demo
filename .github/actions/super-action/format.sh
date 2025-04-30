#!/bin/bash
echo "🔍 Comprobando formato con Prettier..."
npx prettier --check . || {
  echo "🛠️ Formato incorrecto. Corrigiendo..."
  npx prettier --write .
  git config user.name "github-actions[bot]"
  git config user.email "github-actions[bot]@users.noreply.github.com"
  git add .
  git commit -m "🚀 Código autoformateado por la acción" || echo "No hay cambios para commitear"
  git push

  # Configura el push usando el token
git remote set-url origin https://x-access-token:${GH_TOKEN}@github.com/${GITHUB_REPOSITORY}.git
git push || echo "⚠️ No se pudo hacer push (puede que no haya cambios nuevos)"
}

