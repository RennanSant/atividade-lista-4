#!/bin/bash

source funcoes.sh
opc=$1
arq=$2
case $opc in
  "a") echo $(rem_minusc $arq) ;;
  "b") echo $(rem_num $arq) ;;
  "c") echo $(subst_espec $arq) ;;
esac

