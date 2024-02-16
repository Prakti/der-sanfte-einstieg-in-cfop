# Rubik's Cube Lösungsanleitung

Dieses Repository enthält das LaTeX-Projekt für eine neue Anleitung zur Lösung des Rubik's Cube.
Das Ziel ist es schon bei der Anfängermethode die richtigen Grundlagen für das Erlernen der CFOP Methode zu legen.
Das Buch spiegelt meine eigenen Lernerfahrungen und aktuellen Lernfortschritt wieder.
Ich versuche damit eine Anleitung zu schaffen, die ich auch selber gerne gelesen und verwendet hätte.


Das Dokument ist mit KOMA-Script erstellt und nutzt die Pakete `rubik` und `TikZ` für visuelle Darstellungen. 
Das Projekt ist für den Druck optimiert undwird mit `latexmk` gebaut. 
Die finale Version des Buches wird mit `pdfbook/pdfjam` für den Druck vorbereitet.

## Struktur

- Das Buch hat aktuell zwei Kapitel: "CFOP für Anfänger" und "Fortgeschrittene Techniken".
  - Das Verzeichnis `anfaenger` enthält alle Abschnitte und Bilder zum Kapitel "CFOP für Anfänger"
  - `fortgeschritten` enthält alle Abschnitte und Bilder zu "Fortgeschrittene Techniken"
  - Ein drittes Kapitel "Der letzte Schritt zum CFOP Profi" (`profi`) is geplant

- Die zentrale Datei ist `buch.tex`
- Es gibt zwei Shell-Scripte die die Arbeit am Buch vereinfachen:
  - `compile.sh` ist ein einfacher `latexmk` wrapper der verhindert dass man das `--shell-escape` vergisst
  - `make-booklet.sh` ist ein wrapper um `pdfbook` der für ein shönes DIN A5 booklet zum drucken sorgt

## Voraussetzungen

Um dieses Projekt zu bauen, müssen folgende Tools installiert sein:

- Eine LaTeX-Distribution (z.B. TeX Live, MiKTeX)
- `latexmk` für den automatisierten Build-Prozess
- `pdfbook` und `pdfjam` für die Vorbereitung der Druckversion

## Bauen des Dokuments

Um das Dokument zu bauen, navigiert man zum Wurzelverzeichnis des Projekts und führt einen der folgenden Befehle aus:

```bash
latexmk --pdf --shell-escape buch.tex

latexmk --pdf --shell-escape --pvc buch.tex

./compile.sh

./compile.sh --pvc
```

Dies kompiliert das Dokument und erzeugt damit `buch.pdf`

## Vorbereitung für den Druck

Ziel des Dokumentes ist ein Buch, das auf A4 gedruck, zu einem handlichen A5 Booklet gebunden werden kann.
Dafür müssen die Seiten entsprechend umsortiert werden. Das kann man mit dem folgenden Befehl tun:
```bash
make_booklet.sh

```
Das erzeugt einem die fertige Datei `der-sanfte-einstieg-in-cfop.pdf`

## Mitwirken

Jeder ist eingeladen an diesem Buch mitzuwirken. Beiträge bitte als Pull-Request bereit stellen.

## Lizenz
Dieses Buch ist als Creative Commons 1.0 Universal lizensiert.
Es basiert auf einer Unzahl an bereits verfügbaren Informationen aus der Speecubing Szene die dort bereits als Allgemeingut betrachtet werden.

## Danksagung

Ein besonderer Dank geht an alle Mitwirkenden und die Speedcubing-Gemeinschaft für ihre unermüdliche Arbeit und Hingabe, die Kunst des Cubings weiterzuentwickeln.
