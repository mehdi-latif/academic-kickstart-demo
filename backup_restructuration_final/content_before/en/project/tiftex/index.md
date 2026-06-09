---
title: TIFTEX
summary: Un script bash non révolutionnaire pour compiler du tex depuis un terminal.
tags:
  - Bash
  - LaTeX
date: '2021-01-01T00:00:00Z'

# Optional external URL for project (replaces project detail page).
external_link: ''

image:
  caption:
  focal_point: Smart

url_code: 'https://gitlab.com/mlatif/tif-tex'
url_slides: ''
url_video: ''

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: ""
---
*C'est pas révolutionnaire mais ça fait le tiff !!!*

En fait, je devais réviser mon bash et en même temps faire des planches et j'en avais marre d'avoir à taper plusieurs commandes pour obtenir un résultat...
```bash
user@blabla:~/[...]$ tiftex
A non-revolutionary TeX terminal compiler!
COMMAND
	tiftex <tex FILE> {-c} {-u} {-o} {-x} || {-A} {-Z} {-U} {-X}
OPTIONS
	-c : compile
	-x : clear the compilation files
	-o : open .pdf file
	-u : udpdate with generated *.aux file
	-g : zip all files ie. main and contents
	-f : file discrepancy protocol
MACRO
	-A := -c -o -x (all)
	-Z : zip := -c -x -g (zip)
	-U := -u -o
	-X : clear the .pdf file too !
```

Adapté de Script for [Compiling Latex with Bibtex](https://ezbc.me/compiling-latex-with-bibtex).  
