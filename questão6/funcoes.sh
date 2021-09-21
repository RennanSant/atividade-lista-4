#!/bin/bash

function menornum (){
  num=$(cat $1)
  menor=0
  contador=0
  for i in `echo $num`; do
    if [ $contador -eq 0 ]; then
      maior=$i
    else
      if [ $i -lt $menor ]; then
        menor=$i 
      fi
    fi
    let contador=contador+1
  done 
  echo -e "\nMenor número: $menor \n"
}

function maiornum (){
  num=$(cat $1)
  maior=0
  contador=0
  for i in `echo $num`; do
    if [ $contador -eq 0 ]; then
      maior=$i
    else
      if [ $i -gt $maior ]; then
        maior=$i 
      fi
    fi
    let contador=contador+1
  done 
  echo -e "\nMaior número: $maior \n"
}

