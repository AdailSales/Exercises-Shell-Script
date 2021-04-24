#!/bin/bash

echo -n "Digite um parâmetro (start|stop|restart): "

read variavel

case $variavel in

	start)
		echo "Você iniciou o serviço.";;

	stop)
		echo "Você parou o serviço.";;
	restart)
		echo "Você reiniciou o serviço.";;
	*)
		echo "Erro em $0, Digite um dos parâmetros válidos: start | stop | restart"
exit 
;;

esac
