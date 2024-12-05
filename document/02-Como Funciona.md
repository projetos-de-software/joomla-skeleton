---
title: Como funciona um arquivo de XML básico em Joomla
subtitle: 
author: Marcos de Lima Carlos
---

## Introdução

Esse documento tem como objetivo explicar a estrutura do arquivo [templateDetails.xml](src/templates/skeleton/templateDetails.xml) ou outro arquivo XML. Como este repositório é sobre um template a explicação estará focada no template. A estrutura deste arquivo é o que o joomla lerá do pacote para fazer a instalação do template no sistema. Você pode consultar os seguintes links abaixo na documentação do joomla: 

[Creating a basic templateDetails.xml](https://docs.joomla.org/Creating_a_basic_templateDetails.xml_file)

[Whats is the purpose of templateDetails](https://docs.joomla.org/What_is_the_purpose_of_the_templateDetails.xml_file%3F)

[Joomla Manifest 5.2](https://manual.joomla.org/docs/building-extensions/install-update/installation/manifest/)

## Descrição

Como todo arquivo [XML] o template inicia com a seguinte linha: 

```xml
<?xml version="1.0" encoding="UTF-8"?>
```

A linha acima é o que descreve um arquivo XML padrão. A partir daqui veremos as tags. 

### Extension


```xml
<extension type="template" client="site" method="upgrade">

</extension>
```

A tag extension comporta os seguintes atributos: 

**type** - pode ser template, module, component e plugin. Para entender a definição de tipos acesse [este link](https://docs.joomla.org/Extension_types_(general_definitions). Este link é uma outra [documentação](https://docs.joomla.org/Manifest_files). 

**client** - pode ser site ou administrator. Aqui é o tipo de visualização que conta.

**version** - identifica para qual versão do joomla foi desenvolvido. Deprecated a partir da versão 4.0

**method** - install ou upgrade. A diferença é que se a extensão estiver instalada e o atributo estiver como install ele não fará nada. O método upgrade irá substituir todos os arquivos. 

**group** -


#### Metadata

```xml
<name> – extension name (e.g. com_banners). 
<author> – author's name (e.g. Joomla! Project)
<creationDate> – date of creation or release (e.g. April 2006)
<copyright> – a copyright statement (e.g. (C) 2020 - 2030 Open Source Matters. All rights reserved.)
<license> – a license statement (e.g. GNU General Public License version 3 or later; see LICENSE.txt)
<authorEmail> – author's email address (e.g. admin@joomla.org)
<authorUrl> – URL to the author's website (e.g. www.joomla.org)
<version> – the version number of the extension (e.g. 1.6.0)
<description> – the description of the component (may be shown as a tooltip on the admin Manage Extensions page)
<element> – the internal name of the component. If omitted, name will be cleaned and used
```

#### Arquivos de FrontEnd

```xml
<files folder="from-folder">
    <filename>example.php</filename>
    <folder>examples</folder>
</files>
```

Vale lembrar que aqui para cada tipo será instalado em um determinado diretório. Para um templata na pasta template, módulo etc. 

#### Arquivos de Media

Esta categoria cobre: 

1. Arquivos Javascript
2. Arquivos CSS
3. quaisquer imagens que interaja com parte da extensão

```xml
<media folder="media" destination="com_example">
    <folder>js</folder>
    <folder>css</folder>
    <folder>images</folder>
</media>
```