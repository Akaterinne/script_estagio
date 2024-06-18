#!/bin/bash

checar_atualizacoes() {
	echo "Fazendo a atualização da lista de pacotes..."
	sudo apt-get update -qq

	echo "Verificando os pacotes que precisam ser atualizados..."
	updates=$(apt list --upgradable 2>/dev/null | awk -F/ '{print $1}')

	if [ -z "$updates" ];
	then
		echo "Todos os pacotes estão atualizados."
	else
		echo "Pacotes com atualizações disponíveis:"
		echo "$updates"
	fi
}

checar_atualizacoes

