# The flow


## Autores:

* Gustavo Marques
* Hugo Grochau
* Lucas Hardman
* Marcelo Politzer
* Marcos Rapoport
* Michele Valente
* Philipe Bonfim
* Tatiana Magdalena

Data 10/05/2016
#Versão atual: v1.0


## Tamanho aproximado: 3.0 KB

## Descrição:
Recebe um caminho para um arquivo de onde será lido o texto e retorna as 25 palavras mais frequentes, se receber um caminho invalido, lança uma exeção.
O programa recebe um arquivo .txt e conta quantas ocorrências cada palavra tem. Em seguida o usuário pode navegar entre as palavras mais usadas.

## Execução:
* 1 - Inicie o programa com `lua 34.lua`.
* 2 - Escreva o nome do arquivo contendo o texto/palavras.
* 3 - Receba uma lista de até 25 palavras com suas ocorrências.

##Arquitetura:
34.lua
|->

## Pre-condição:

Devem existir os seguintes arquivos:
* `input.txt` - texto que será consultado.
* `stop_words.txt` - palavras a serem ignoradas pela leitura.

##Pós-condição:



## Livro diário:
* 2016-05-03 - Divisão dos estilos entre os participantes dos grupos.
* 2016-05-09 - Início da tradução do código fonte do estilo 34 para lua, feito em conjunto por Philipe Bonfim e Marcos Rapoport.
* 2016-05-10 - Finalização da tradução do código 34 para Lua.
* 2016-05-10 - Inicio do relatório do codigo e explicação de como foram usadas as 6 regras.
* 2016-05-11 - Fim da elaboração do diagrama simples e do relatório.
