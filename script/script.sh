#!/bin/sh


## Inicializa tudo como default
yarn init -y 

## Instalação do commitlint
yarn add -D @commitlint/{cli,config-conventional}
echo "module.exports = { extends: ['@commitlint/config-conventional'] };" > commitlint.config.js

## instalação husky
yarn add -D husky
npx husky init 
rm -rf .husky/pre-commit
echo "npx --no -- commitlint --edit ${1}" > .husky/commit-msg

## commitzen
yarn add -D commitizen
yarn commitizen init cz-conventional-changelog --yarn --dev --exact


## Standard - Version
yarn add -D standard-version

echo $(jq '. += {"scripts":{}}' package.json) > package.json
echo $(jq '.scripts +={"prepare":"husky"}' package.json) > package.json
echo $(jq '.scripts +={"commit":"git-cz"}' package.json) > package.json
echo $(jq '.scripts +={"release":"standard-version"}' package.json) > package.json

# Versionamento Changelog
cat <<EOF > .versionrc
{
  "types": [
    { "type": "feat", "section": "Funcionalidades" },
    { "type": "fix", "section": "Bugs" },
    { "type": "chore", "hidden": true },
    { "type": "docs", "hidden": true },
    { "type": "style", "hidden": true },
    { "type": "refactor", "hidden": true },
    { "type": "perf", "hidden": true },
    { "type": "test", "hidden": true },
    { "type": "build", "hidden": true }
  ] 
}
EOF

## Create .Gitignore
cat <<EOF > .gitignore
node_modules
EOF