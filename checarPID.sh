#!/usr/bin/env bash

# --------------------------------------------------------
# Script   : checarPID 
# Descrição: Compara PID do script e do shell do terminal.
# Versão   : 0.1
# Autor    : Adail Sales <adail.sales@tutanota.com>
# Data     : 15 de setembro de 2020
# Licença  : GNU/GPL v3.0
# Uso      : /caminho/checarPID ou ./checarPID
# --------------------------------------------------------

clear

sep="-----------------------------------------------------"

echo "$sep
COMPARANDO PID DAS SESSÕES DO BASH NO SCRIPT E NO TERMINAL
$sep
PID da sessão do bash do script: $$
PID da sessão do bash no terminal: $PPID
$sep
$(ps -p $$,$PPID -o pid=,user=,tty=,args=)
$sep
"
exit 0
