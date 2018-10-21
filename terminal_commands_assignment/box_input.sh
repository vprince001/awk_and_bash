#! /bin/bash

text=$1
TBline=$(./hyphens.sh "$text")

echo "+$TBline+"
echo "|$text|"
echo "+$TBline+"
