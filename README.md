# BasalStyle

Folha de estilo para prototipação rápida de wireframes, sites e formulários.

## Sobre o Grid

O Grid default tem entrelinha de 30px (baseline) e 12 colunas de 95px. As colunas totalizam uma largura máxima de 1140px (`desktop-12`).

```
<div class="row desktop-12 container">
    <div class="row">
        <div class="desktop-6"></div>
        <div class="desktop-3"></div>
        <div class="desktop-3"></div>
    </div>
</div>
```
A classe `container` centraliza o bloco, por isso é comum usá-la junto com uma classe de tamanho de coluna, para definir a largura máxima. Existe um exemplo completo no documento`index.html`. Caso queira fazer um site com largura máxima de 10 colunas (950px de largura máxima), segue um exemplo:

```
<div class="row desktop-10 container">
    <div class="row">
        <div class="desktop-7"></div>
        <div class="desktop-3"></div>
    </div>
</div>
```

O funcionamento de linha e colunas segue o princípio de um bloco (div, header, section, article,...)  com a classe "row" envolvendo `DIV` de colunas.

Deve existir dentro da `row` um somatório de classes de colunas similar a largura máxima aplicada no container (mais detalhes em **Espaço entre colunas**).

### Layout "responsivo"

Não é necessário aplicar as classes "tablet" e "mobile" para o grid ficar "responsivo". Quando o site está sendo apresentado na tela com largura inferior a 800px, todas as classes de `desktop-#` se modificam e ajustam-se em uma única coluna.

As classes de organização do layout para mobile funcionam entre a largura de 800px até 700px (`tablet-[1,2,3]`) e de 700px até 320px (`mobile-2`).

Um exemplo com quebras no layout:

```
<div class="row">
    <div class="desktop-5 tablet-2 mobile-2"></div>
    <div class="desktop-5 tablet-2 mobile-2"></div>
    <div class="desktop-2"></div>
</div>
```
Qual é o resultado:

1. **Em telas acima de 800px de largura (`desktop-#`)**
O layout fica definido em 3 colunas flexíveis com largura máxima total de 1440px.
2. **Abaixo de 800px até 700px (`tablet-#`)**
As primeiras duas colunas dividirão a tela em 50% de largura cada. A última coluna ficará abaixo delas e ocupará toda a largura (100%).
2. **Abaixo de 700px até 320px (`mobile-#`)**
O layout será semelhante ao da tablet.

O emprego das classes `tablet-#` e `mobile-#` deve ser avaliado com critério, para não incorrer em erros de usabilidade, no caso de conteúdos que não ficam bem apresentados em telas pequenas.

### Espaço entre colunas de texto (Gutter)

Para afastar o conteúdo de texto e imagem do limite da coluna, existem as classes:
* `.gutter` (aplica um espaço em ambos os lados),
* `.gutter-left` (aplica um espaço apenas na esqueda) e
* `.gutter-right` (aplica um espaço apenas na direita)

```
<div class="row">
    <div class="desktop-2 gutter-right "></div>
    <div class="desktop-7 gutter"></div>
    <div class="desktop-3"></div>
</div>
```

### Espaço entre colunas

As classes `col-left-[1-11]` e `col-right-[1-11]` aplicam um espaço real entre colunas. E por isso, deve fazer parte do somatório de colunas no bloco que forma a linha. Estas classes só atuam em telas acima de 800px.

```
<div class="row">
    <div class="desktop-7 col-right-2"></div>
    <div class="desktop-3 gutter"></div>
</div>
```

### Customização

Para qualquer customização utilize o arquivo `_custom.sass` e execute o comando:

```bash
sass --update sass/style.sass:style.min.css --stop-on-error --sourcemap=none --no-cache --style compact
```

### Bugs, Sugestões e Funcionalidades

Relate sua questão ou pedido de funcionalidades no [GitHub Issues](https://github.com/viniciusbraga/basalstyle/issues).


## License

The MIT License (MIT)

Copyright (c) 2014 Vinicius Braga <contato at viniciusbraga dot com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
