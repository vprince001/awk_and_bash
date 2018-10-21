#! /bin/bash

fileName=$1

#cat $fileName | awk '{print length,$0}' | cut -d " " -f1 | sort -nr | head -n1
cat $fileName | sed s/./1/g | sort -n | tail -n1 | wc -c
