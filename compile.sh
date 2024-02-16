#!/bin/sh

latexmk --pdf --shell-escape $@ buch.tex
