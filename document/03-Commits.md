---
title: Commits Convencionais
subtitle: 
author: Marcos de Lima Carlos
---

## Introdução 

Esse documento descreve o que são [commits convencionais](https://www.conventionalcommits.org/pt-br/v1.0.0-beta.4/)


## Descrição

A especificação do Conventional Commits é uma convenção simples para utilizar nas mensagens de commit. Ela define um conjunto de regras para criar um histórico de commit explícito, o que facilita a criação de ferramentas automatizadas. Esta convenção segue o SemVer, descrevendo os recursos, correções e modificações que quebram a compatibilidade nas mensagens de commit.

A mensagem do commit deve ser estruturada da seguinte forma:

```
<tipo>[escopo opcional]: <descrição>

[corpo opcional]

[rodapé opcional]

```

### Tipos

| Tipo     |        Descrição         |
| :------- | :----------------------: |
| Feat     |      Funcionalidade      |
| Fix      |    Correção de código    |
| Chore    |    Núcleo do sistema     |
| Docs     |       Documentação       |
| style    |         Estilos          |
| refactor |  Refatoração de Código   |
| perf     | Performance e Benchmark  |
| test     | Testes - quaisquer tipos |
| build    |        compilação        |

## Por que utilizar commits convencionais? 

- Criação automatizada de CHANGELOGs.
- Determinar automaticamente um aumento de versionamento semântico (com base nos tipos de commits).
- Comunicar a natureza das mudanças para colegas de equipe, o público e outras partes interessadas.
- Disparar processos de build e deploy.
- Facilitar a contribuição de outras pessoas em seus projetos, permitindo que eles explorem um histórico de commits mais estruturado.



