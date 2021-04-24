#!/usr/bin/env bash

# Opções de editor:

editor="nano"
editor2="vim"
editor3="geany"

# Variáveis:

data_de_hoje=$( date +'%d de %B de %Y' )
mensagem_case1="Digite o nome de apenas um arquivo! Saindo..."
mensagem_case2="Arquivo já existe! Saindo..."


header="#!/usr/bin/env bash

# --------------------------------------------------------
# Script   : $1 
# Descrição:
# Versão   : 0.1
# Autor    : Adail Sales <adail.sales@tutanota.com>
# Data     : $data_de_hoje
# Licença  : GNU/GPL v3.0
# Uso      :
# --------------------------------------------------------
"

[[ $# -ne 1 ]] && echo $mensagem_case1 && exit 1
[[ -f $1 ]] && echo $mensagem_case2 && exit 1

echo "$header" >> $1
chmod +x $1
$editor $1

