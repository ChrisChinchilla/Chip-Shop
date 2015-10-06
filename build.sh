#!/bin/bash

bundle install
bundle update

rm -dfr _site
rm -dfr pod

jekyll build

# Process Cards
mkdir -p pod/pdf/cards

echo "Processing Game Cards…"
for filename in _cards/*.md; do
  echo $filename

  pandoc --from=markdown+yaml_metadata_block --template _layouts/cards.latex -o pod/pdf/cards/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename
done

pdfjam pod/pdf/cards/*.pdf --no-landscape --frame true --nup 3x3 --suffix complete --outfile ./cards.pdf

mv ./cards.pdf pod/cards_complete.pdf


# Process Manual
mkdir -p pod/pdf/manual

echo "Processing Manual…"

pandoc --from=markdown+yaml_metadata_block --template _layouts/manual_print.latex -o pod/pdf/manual/manual.pdf --latex-engine=xelatex manual.md
