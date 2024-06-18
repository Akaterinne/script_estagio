#!/bin/bash

wifi_conectividade() {
	echo "Verificando dispositivos conectados ao wi-fi..."
	sudo arp-scan --localnet | grep '^[0-9]' | awk '{print $1, $2}'
}

wifi_conectividade

