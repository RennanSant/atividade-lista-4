#!/bin/bash 

function arq_read(){
  read -p 'Nome do arquivo: ' arquivo1
  if [ -e $arquivo1 ]; then
    echo
  else
    read -p "ERRO: $arquivo1 não existe! Aperte uma tecla para continuar." 
  fi
}

function rem_letras(){
  cat $arquivo1 | sed -E 's/[a-Z]//g' && echo -e "Removendo letras..." || echo -e "ERRO: Faltando o arquivo para processar!"
}

function rem_dig(){
  cat $arquivo1 | sed -E 's/[0-9]//g'
}

function subs_esp(){
  cat $arquivo1 | sed -E 's/\W|_/~/g'
}

clear
while true; do

  echo -e "\n\n\n=-=-=-=-=-=-=-=-=-=-=-MENU PRINCIPAL-=-=-=-=-=-=-=-=-=-=-="
  echo -e "\n\n\nr - Digite o nome de um arquivo que será processado."
  echo -e "a - Remova todas as letras do arquivo."
  echo -e "b - Remova todos os dígitos do arquivo."
  echo -e "c - Substitua todos os caracteres que não são letras nem dígitos do arquivo por ~."
  echo -e "q - Saia do script.\n\n\n"

  read -p "OPÇÃO: " opc
  case $opc in
    "r") arq_read;;
    "a") rem_letras && read -p "Aperte uma tecla para continuar.";;
    "b") rem_dig && read -p "Aperte uma tecla para continuar.";;
    "c") subs_esp && read -p "Aperte uma tecla para continuar.";;
    "q") break;;
    *) echo -e "\nERRO: Escolha uma opção válida! " && read -p "Aperte uma tecla para continuar.";;
  esac 
  clear
done