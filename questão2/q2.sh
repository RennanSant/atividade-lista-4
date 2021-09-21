#!/bin/bash

downloads=0

while read linha ;do
	nome=$(echo $linha | cut -d ' ' -f1)
	downloads=$(echo $linha | cut -d ' ' -f3)
	while read linha1 ;do
		nome1=$(echo $linha1 | cut -d ' ' -f1)
		downloads1=$(echo $linha1 | cut -d ' ' -f3)
		if [ "echo $linha" != "echo $linha1" ]; then
			if [ "echo $nome" == "echo $nome1" ]; then
				let downloads=downloads+downloads1
			fi
		fi
	done < $1
	echo -e "$nome baixou $downloads \n" >> /tmp/temporario
done < $1

cat /tmp/temporario | sort -n | uniq

rm /tmp/temporario
