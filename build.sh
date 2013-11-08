#!/bin/sh

if [ ! -d "dist" ]; then
   mkdir dist
fi

latex src/resume.tex
dvipdfm -o dist/resume.pdf resume.dvi
rm resume.dvi resume.aux resume.log
