#!/bin/bash

cat $1 | cut -d " " -f 1,2,3 > meninos
cat $1 | sed -E 's/.{1,}  //g' > meninas