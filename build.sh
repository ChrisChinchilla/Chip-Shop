#!/bin/bash

bundle install
bundle update

rm -dfr _site
rm -dfr pod

jekyll build

# Process Cards
mkdir -p pod/pdf/cards
mkdir -p pod/pdf/legal


echo "Processing Game Cards…"
for filename in _cards/*.md; do
  echo $filename

  pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/cards.latex -o pod/pdf/cards/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename

  pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/legal.latex -o pod/pdf/legal/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename

done

pdfjam pod/pdf/cards/*.pdf --no-landscape --frame true --nup 3x3 --suffix complete --outfile ./cards.pdf

mv ./cards.pdf pod/cards_complete.pdf

pdfjam pod/pdf/legal/*.pdf --no-landscape --nup 1x1 --suffix complete --outfile ./legal_notices.pdf

mv ./legal_notices.pdf pod/legal_notices.pdf

# Process Manual
mkdir -p pod/pdf/manual

echo "Processing Manual…"

pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/manual_print.latex -o pod/pdf/manual/manual.pdf --latex-engine=xelatex manual.md

# Process Concepts
mkdir -p pod/pdf/concepts

echo "Processing Concepts…"
for filename in _concepts/*.md; do
  echo $filename

  pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/concepts.latex -o pod/pdf/concepts/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename
done

pdfjam pod/pdf/concepts/*.pdf --no-landscape --frame false --nup 5x5 --suffix complete --outfile ./concepts.pdf

mv ./concepts.pdf pod/concepts_complete.pdf
