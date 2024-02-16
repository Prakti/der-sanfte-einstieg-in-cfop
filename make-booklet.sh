#! /bin/sh

name=$(echo "$1" | cut -f 1 -d '.')

pdfbook --paper a4 --booklet true $1 --outfile ${name}-booklet.pdf
