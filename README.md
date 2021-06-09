# Data packages for Reproducible Examples

Esse repositório armazena exemplos de [data packages](https://specs.frictionlessdata.io/) para construção de [minimal, reproducible examples (reprex)](https://stackoverflow.com/help/minimal-reproducible-example)

Ao identificar um data package com algum caso de uso específico que merece ser testado, crie um novo branch, faça as alterações necessárias e, após realizar os commits, faça push das mudanças.

```bash
git checkout -b reprex-example
# alterações necessárias
git add .
git commit -m "Altera algo significativo para esse exemplo"
git push --set-upstream origin reprex-example
```

Você pode acessar essa versão do repositório na URL

- <https://github.com/dados-mg/datapackage-reprex/tree/reprex-example>

_Não faça commits em branches que você não criou antes de expressamente conversar com o autor_. Além disso, atualize a lista abaixo:

- [root-datapackage](https://github.com/dados-mg/datapackage-reprex/tree/root-datapackage): Data package [mínimo](https://specs.frictionlessdata.io/data-package/#illustrative-structure) com arquivos armazenados na raiz do diretório (ie. sem pasta `data/`)
- [pdf-resource](https://github.com/dados-mg/datapackage-reprex/tree/pdf-resource): Data package com um arquivo `.pdf` como recurso
- [pdf-resource-sha256](https://github.com/dados-mg/datapackage-reprex/tree/pdf-resource-sha256): Data package com um arquivo `.pdf` como recurso e algoritmo de [checksum sha256](https://en.wikipedia.org/wiki/SHA-2)
- [xlsx-resource](https://github.com/dados-mg/datapackage-reprex/tree/xlsx-resource): Data package com um arquivo `.xlsx` como recurso
- [foreign-key-constraint](https://github.com/dados-mg/datapackage-reprex/tree/foreign-key-constraint): Data package com múltiplos recursos e [restrição de chave estrangeira](https://specs.frictionlessdata.io/table-schema/#foreign-keys)
- [git-lfs](https://github.com/dados-mg/datapackage-reprex/tree/git-lfs): Data package configurado para utilização do [git LFS](https://git-lfs.github.com/) na pasta `data/`
- [Conferindo existência de datapackage.json na raiz do dataset em sistemas operacionais distintos](https://github.com/dados-mg/datapackage-reprex/tree/os-datapackage-identification)
