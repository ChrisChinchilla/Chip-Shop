#!/bin/bash

bundle install
bundle update

rm -dfr _site

jekyll build

# TODO: Move this out of site root
mkdir -p _site/pdf/cards

for filename in _cards/*.md; do
  echo $filename
  pandoc --from=markdown+yaml_metadata_block --template _layouts/cards.latex -o _site/pdf/cards/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename
done
