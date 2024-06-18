#!/bin/bash 

endereco_hosts() {
	echo "Escreva a lista de hosts (devem estar separados por espaços): "
	read -a hosts
}

quantidade_ping() {
	echo "Escreva a quantidade de pacotes ping que vão ser enviados: " 
	read quant_ping

	if [[ -z "$quant_ping" ]]; 
		then quant_ping=4
	fi
}


conectividade() {
	for host in "${hosts[@]}"
	do
		echo "Testando conectividade com $host ..."
		ping -c $quant_ping $host > /dev/null

		if [ $? -eq 0 ]; 
		then 
			echo "Conectividade com $host foi realizada"
		else
			echo "Falha na conectividade com $host"
		fi
	done
}

endereco_hosts
quantidade_ping
conectividade
	
