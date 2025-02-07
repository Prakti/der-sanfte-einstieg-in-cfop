#! /bin/sh

./compile.sh spickzettel_anfaengermethode.tex &&
pdfnup --nup 2x2 --paper a4paper --noautoscale true --outfile spickzettel_anfaengermethode_a4.pdf spickzettel_anfaengermethode.pdf
