#!/bin/bash

FILES=$(git diff --name-only HEAD HEAD~2)
for filename in $FILES
do

IFS='/' read -a filearray <<< "$filename"

echo "Type: ${filearray[0]}"

if [ "${filearray[0]}" == '_cards' ]; then
  echo ${filearray[1]}

  pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/cards.latex -o pod/pdf/cards/"$(basename "${filearray[1]}" .md)".pdf --latex-engine=xelatex _cards/${filearray[1]}

  pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/legal.latex -o pod/pdf/legal/"$(basename "${filearray[1]}" .md)".pdf --latex-engine=xelatex _cards/${filearray[1]}
fi

if [ "${filearray[0]}" == '_concepts' ]; then
  echo ${filearray[1]}

  pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/concepts.latex -o pod/pdf/concepts/"$(basename "${filearray[1]}" .md)".pdf --latex-engine=xelatex _concepts/"${filearray[1]}"
fi

done

pdfjam pod/pdf/cards/*.pdf --no-landscape --frame true --nup 3x3 --suffix complete --outfile ./cards.pdf

mv ./cards.pdf pod/cards_complete.pdf

pdfjam pod/pdf/legal/*.pdf --no-landscape --nup 1x1 --suffix complete --outfile ./legal_notices.pdf

mv ./legal_notices.pdf pod/legal_notices.pdf

# Process Manual
mkdir -p pod/pdf/manual

echo "Processing Manual…"

pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/manual_print.latex -o pod/pdf/manual/manual.pdf --latex-engine=xelatex manual.md

pdfjam pod/pdf/concepts/*.pdf --no-landscape --frame false --nup 5x5 --suffix complete --outfile ./concepts.pdf

mv ./concepts.pdf pod/concepts_complete.pdf
