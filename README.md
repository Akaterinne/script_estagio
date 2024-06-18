# Projeto de Scripts em Shell

Este repositório contém uma coleção de scripts em Shell desenvolvidos para diversas tarefas de automação e otimização em sistemas operacionais. Abaixo estão as descrições breves das principais funcionalidades e scripts incluídos.

## Scripts e Funcionalidades

### Checar_portas

Este script verifica as portas abertas de um determinado host.

- **Função receber_host**: Solicita ao usuário que insira o endereço do host a ser verificado. O endereço é armazenado na variável `host`.
- **Função portas_checar**: Utiliza o comando `nmap` para escanear as portas abertas do host especificado. O comando `grep '^[0-9]'` filtra e exibe apenas as linhas que começam com números, correspondendo às informações das portas abertas.

### teste_conectividade

Este script testa a conectividade com múltiplos hosts usando o comando `ping`.

- **Função endereco_hosts**: Solicita ao usuário que insira uma lista de endereços de hosts, separados por espaços. Os endereços são armazenados no array `hosts`.
- **Função quantidade_ping**: Pergunta ao usuário quantos pacotes `ping` devem ser enviados para cada host. Se o usuário não fornecer um valor, o padrão é 4 pacotes.
- **Função conectividade**: Itera sobre cada host fornecido pelo usuário e executa o comando `ping` com a quantidade de pacotes especificada. O resultado do `ping` é redirecionado para `/dev/null` para manter a saída limpa. Exibe mensagens de sucesso ou falha de conectividade com base no código de saída do `ping`.

### Atualizações_disponiveis

Este script verifica e lista pacotes que têm atualizações disponíveis.

- **Atualiza a lista de pacotes**: `sudo apt-get update -qq` atualiza a lista de pacotes disponíveis silenciosamente.
- **Lista pacotes atualizáveis**: `apt list --upgradable` lista os pacotes que podem ser atualizados.
- **Filtra e exibe pacotes**: `awk -F/ '{print $1}'` extrai o nome do pacote da saída. Se não houver atualizações, exibe uma mensagem apropriada.

### wifi_conectividade

Este script verifica os dispositivos conectados à rede Wi-Fi local.

- **Mensagem Inicial**: Informa que a verificação dos dispositivos conectados ao Wi-Fi está em andamento.
- **Varredura da Rede Local**: Utiliza `sudo arp-scan --localnet` para realizar uma varredura na rede local e listar todos os dispositivos conectados. O `arp-scan` envia pacotes ARP para todos os dispositivos na rede local e exibe as respostas recebidas.
- **Filtragem e Formatação da Saída**: A saída do comando `arp-scan` é filtrada usando `grep '^[0-9]'` para capturar apenas as linhas que começam com números (endereços IP). O comando `awk '{print $1, $2}'` exibe os endereços IP e MAC dos dispositivos conectados.

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests.

Este repositório foi desenvolvido durante meu estágio na Sec4U, com o objetivo de aprimorar habilidades práticas em automação e administração de sistemas e redes.
