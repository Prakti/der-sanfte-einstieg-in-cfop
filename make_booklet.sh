#! /bin/sh

./compile.sh buch.tex && pdfbook --paper a4 --angle 270 --booklet true buch.pdf --outfile der-sanfte-einstieg-in-cfop.pdf
