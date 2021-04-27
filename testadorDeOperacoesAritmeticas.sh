#!/usr/bin/env bash

# --------------------------------------------------------
# Script   : testadorDeOperacoesAritmeticas 
# Descrição:
# Versão   : 0.1
# Autor    : Adail Sales <adail.sales@tutanota.com>
# Data     : 22 de outubro de 2020
# Licença  : GNU/GPL v3.0
# Uso      :
# --------------------------------------------------------

# clear

echo "
Operadores Aritméticos Básicos:

**			exponenciação
*, /, %			multiplicação, divisão, resto de divisão
+, -			adição, subtração

Digite qualquer expressão com os operadores acima e tecle enter para efetuar o cálculo.

Exemplo: 2 + 2
"


read -p "Sua expressão: " expressao

[[ ${#expressao} -lt 1 ]] && exit

# Utilizando o comando 'let'...

let calc="$expressao"

echo  "
- Utilizando o comando 'let \"$expressao\"':

$expressao = $calc
"
# Utilizando o comando composto (( EXPRESSÃO ))...

((calc = $expressao))

echo "
- Utlizando o comando composto '(( $expressao ))':

$expressao = $calc
"

# Utilizando a expressão aritmética...

calc=$(( $expressao ))

echo "
- Utilizando a  expansão aritmética '\$(( $expressao ))':

$expressao = $calc
"

# Alterando atributo de inteiro 'declare -i var=EXPRESSÃO'...

declare -i calc="$expressao"

echo "
- Alterando o atributo  de inteiro 'declare -i var=\"$expressao\"':

$expressao = $calc
"

declare +i calc

exit
