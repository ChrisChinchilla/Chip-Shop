#!/bin/bash

rm -dfr _site

jekyll build

mkdir -p _site/pdf/cards

for filename in _cards/*.md; do
  echo $filename
  pandoc --from=markdown+yaml_metadata_block --template _layouts/cards.latex -o _site/pdf/cards/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename
done
