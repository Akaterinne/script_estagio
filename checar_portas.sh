#!/bin/bash

receber_host () {
	echo "Escreva o host: "
	read host
}

portas_checar() {
	echo "Verificando portas abertas no host $host ..."
	nmap $host | grep '^[0-9]'

}


receber_host
portas_checar
