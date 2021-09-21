#!/bin/bash

function rem_num (){
  for i in `cat $1`; do
    echo $i | sed 's/[0-9]//g'
    echo -e "\n"
  done
}

function subst_espec (){
  cat $1 | awk -F, -v OFS=, '{gsub(/\@|\#|\!|\*|\&|\¨|\%|\$|\(|\)|\/|\-|\_|\=|\+|\[|\]|\{|\}/,"."); print}'
  #cat $1 | awk '{gsub (/\W|_/, "."); print}'
}

function rem_minusc (){
  for i in `cat $1`; do
    echo $i | tr '[a-z]' ' '   
  done
}
