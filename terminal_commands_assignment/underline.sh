#! /bin/bash

text=$1

line=$(./hyphens.sh "$text")
echo "$text"
echo "$line"
