#!/bin/sh

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

