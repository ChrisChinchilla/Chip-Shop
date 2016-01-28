bundle install
bundle update

rm -dfr _site
rm -dfr pod
rm -dfr simulators

jekyll build

mkdir -p pod/pdf/cards
mkdir -p pod/pdf/cards/events
mkdir -p pod/pdf/cards/personalities
mkdir -p pod/pdf/cards/products/accessories
mkdir -p pod/pdf/cards/products/sub_era_1
mkdir -p pod/pdf/cards/products/sub_era_2
mkdir -p pod/pdf/cards/products/sub_era_3
mkdir -p pod/pdf/cards/products/sub_era_4
mkdir -p pod/pdf/cards/products/sub_era_5
mkdir -p pod/pdf/income
mkdir -p pod/pdf/legal
mkdir -p simulators/tabletop_simulator/cards/events
mkdir -p simulators/tabletop_simulator/cards/personalities
mkdir -p simulators/tabletop_simulator/cards/products/accessories
mkdir -p simulators/tabletop_simulator/cards/products/sub_era_1
mkdir -p simulators/tabletop_simulator/cards/products/sub_era_2
mkdir -p simulators/tabletop_simulator/cards/products/sub_era_3
mkdir -p simulators/tabletop_simulator/cards/products/sub_era_4
mkdir -p simulators/tabletop_simulator/cards/products/sub_era_5


echo "Processing Product Accessory Cards…"
for filename in _cards/products/accessories/*.md; do
  # TODO: Counter of progress

  # Create PDFs
  pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/cards.latex -o pod/pdf/cards/products/accessories/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename

  # pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/legal.latex -o pod/pdf/legal/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename

  # Create Individual PNGs
  convert -density 72 -depth 8 -quality 85 pod/pdf/cards/products/accessories/"$(basename "$filename" .md)".pdf simulators/tabletop_simulator/cards/products/accessories/"$(basename "$filename" .md)".png
done

pdfjam pod/pdf/cards/products/accessories/*.pdf --no-landscape --frame true --nup 5x4 --suffix complete --outfile ./products_accessories_cards.pdf
mv ./products_accessories_cards.pdf pod/products_accessories_cards.pdf

# Create Card Sheets for Tabletop Simulator
montage -verbose -define png:size=484x744 -geometry 484x744+2+2 -tile 10x7 simulators/tabletop_simulator/cards/products/accessories/*.png simulators/tabletop_simulator/cards/products_accessories_card_sheet.png

echo "Processing Product Sub Era 1 Cards…"
for filename in _cards/products/sub_era_1/*.md; do
  # TODO: Counter of progress

  # Create PDFs
  pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/cards.latex -o pod/pdf/cards/products/sub_era_1/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename

  # pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/legal.latex -o pod/pdf/legal/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename

  # Create Individual PNGs
  convert -density 72 -depth 8 -quality 85 pod/pdf/cards/products/sub_era_1/"$(basename "$filename" .md)".pdf simulators/tabletop_simulator/cards/products/sub_era_1/"$(basename "$filename" .md)".png
done

pdfjam pod/pdf/cards/products/accessories/*.pdf --no-landscape --frame true --nup 5x4 --suffix complete --outfile ./products_sub_era_1_cards.pdf
mv ./products_sub_era_1_cards.pdf pod/products_sub_era_1_cards.pdf

# Create Card Sheets for Tabletop Simulator
montage -verbose -define png:size=484x744 -geometry 484x744+2+2 -tile 10x7 simulators/tabletop_simulator/cards/products/sub_era_1/*.png simulators/tabletop_simulator/cards/products_sub_era_1_card_sheet.png

echo "Processing Product Sub Era 2 Cards…"
for filename in _cards/products/sub_era_2/*.md; do
  # TODO: Counter of progress

  # Create PDFs
  pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/cards.latex -o pod/pdf/cards/products/sub_era_2/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename

  # pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/legal.latex -o pod/pdf/legal/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename

  # Create Individual PNGs
  convert -density 72 -depth 8 -quality 85 pod/pdf/cards/products/sub_era_2/"$(basename "$filename" .md)".pdf simulators/tabletop_simulator/cards/products/sub_era_2/"$(basename "$filename" .md)".png
done

pdfjam pod/pdf/cards/products/sub_era_2/*.pdf --no-landscape --frame true --nup 5x4 --suffix complete --outfile ./products_sub_era_2_cards.pdf
mv ./products_sub_era_2_cards.pdf pod/products_sub_era_2_cards.pdf

# Create Card Sheets for Tabletop Simulator
montage -verbose -define png:size=484x744 -geometry 484x744+2+2 -tile 10x7 simulators/tabletop_simulator/cards/products/sub_era_2/*.png simulators/tabletop_simulator/cards/products_sub_era_2_card_sheet.png

echo "Processing Product Sub Era 3 Cards…"
for filename in _cards/products/sub_era_3/*.md; do
  # TODO: Counter of progress

  # Create PDFs
  pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/cards.latex -o pod/pdf/cards/products/sub_era_3/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename

  # pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/legal.latex -o pod/pdf/legal/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename

  # Create Individual PNGs
  convert -density 72 -depth 8 -quality 85 pod/pdf/cards/products/sub_era_3/"$(basename "$filename" .md)".pdf simulators/tabletop_simulator/cards/products/sub_era_3/"$(basename "$filename" .md)".png
done

pdfjam pod/pdf/cards/products/sub_era_3/*.pdf --no-landscape --frame true --nup 5x4 --suffix complete --outfile ./products_sub_era_3_cards.pdf
mv ./products_sub_era_3_cards.pdf pod/products_sub_era_3_cards.pdf

# Create Card Sheets for Tabletop Simulator
montage -verbose -define png:size=484x744 -geometry 484x744+2+2 -tile 10x7 simulators/tabletop_simulator/cards/products/sub_era_3/*.png simulators/tabletop_simulator/cards/products_sub_era_3_card_sheet.png

echo "Processing Product Sub Era 4 Cards…"
for filename in _cards/products/sub_era_4/*.md; do
  # TODO: Counter of progress

  # Create PDFs
  pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/cards.latex -o pod/pdf/cards/products/sub_era_4/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename

  # pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/legal.latex -o pod/pdf/legal/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename

  # Create Individual PNGs
  convert -density 72 -depth 8 -quality 85 pod/pdf/cards/products/sub_era_4/"$(basename "$filename" .md)".pdf simulators/tabletop_simulator/cards/products/sub_era_4/"$(basename "$filename" .md)".png
done

pdfjam pod/pdf/cards/products/sub_era_4/*.pdf --no-landscape --frame true --nup 5x4 --suffix complete --outfile ./products_sub_era_4_cards.pdf
mv ./products_sub_era_4_cards.pdf pod/products_sub_era_4_cards.pdf

# Create Card Sheets for Tabletop Simulator
montage -verbose -define png:size=484x744 -geometry 484x744+2+2 -tile 10x7 simulators/tabletop_simulator/cards/products/sub_era_4/*.png simulators/tabletop_simulator/cards/products_sub_era_4_card_sheet.png

echo "Processing Product Sub Era 5 Cards…"
for filename in _cards/products/sub_era_5/*.md; do
  # TODO: Counter of progress

  # Create PDFs
  pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/cards.latex -o pod/pdf/cards/products/sub_era_5/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename

  # pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/legal.latex -o pod/pdf/legal/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename

  # Create Individual PNGs
  convert -density 72 -depth 8 -quality 85 pod/pdf/cards/products/sub_era_5/"$(basename "$filename" .md)".pdf simulators/tabletop_simulator/cards/products/sub_era_5/"$(basename "$filename" .md)".png
done

pdfjam pod/pdf/cards/products/sub_era_5/*.pdf --no-landscape --frame true --nup 5x4 --suffix complete --outfile ./products_sub_era_5_cards.pdf
mv ./products_sub_era_5_cards.pdf pod/products_sub_era_5_cards.pdf

# Create Card Sheets for Tabletop Simulator
montage -verbose -define png:size=484x744 -geometry 484x744+2+2 -tile 10x7 simulators/tabletop_simulator/cards/products/sub_era_5/*.png simulators/tabletop_simulator/cards/products_sub_era_5_card_sheet.png


echo "Processing Events Cards…"
for filename in _cards/events/*.md; do
  # TODO: Counter of progress

  # Create PDFs
  pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/cards.latex -o pod/pdf/cards/events/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename

  # pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/legal.latex -o pod/pdf/legal/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename

  # Create Individual PNGs
  convert -density 72 -depth 8 -quality 85 pod/pdf/cards/events/"$(basename "$filename" .md)".pdf simulators/tabletop_simulator/cards/events/"$(basename "$filename" .md)".png
done

pdfjam pod/pdf/cards/events/*.pdf --no-landscape --frame true --nup 5x4 --suffix complete --outfile ./events_cards.pdf
mv ./events_cards.pdf pod/events_cards.pdf

# Create Card Sheets for Tabletop Simulator
montage -verbose -define png:size=484x744 -geometry 484x744+2+2 -tile 10x7 simulators/tabletop_simulator/cards/events/*.png simulators/tabletop_simulator/cards/events_card_sheet.png


echo "Processing Personality Cards…"
for filename in _cards/personalities/*.md; do
  # TODO: Counter of progress

  # Create PDFs
  pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/cards.latex -o pod/pdf/cards/personalities/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename

  # pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/legal.latex -o pod/pdf/legal/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename

  # Create Individual PNGs
  convert -density 300 -depth 8 -quality 85 pod/pdf/cards/personalities/"$(basename "$filename" .md)".pdf simulators/tabletop_simulator/cards/personalities/"$(basename "$filename" .md)".png
done

pdfjam pod/pdf/cards/personalities/*.pdf --no-landscape --frame true --nup 5x4 --suffix complete --outfile ./personalities_cards.pdf
mv ./personalities_cards.pdf pod/personalities_cards.pdf

# Create Card Sheets for Tabletop Simulator
montage -verbose -define png:size=484x744 -geometry 484x744+2+2 -tile 10x7 simulators/tabletop_simulator/cards/personalities/*.png simulators/tabletop_simulator/cards/personalities_card_sheet.png





# echo "Processing Income…"
# for filename in _income/*.md; do
#   echo $filename
#   # TODO: Counter of progress
#
#   pandoc --from=markdown+yaml_metadata_block --smart --template _layouts/cards.latex -o pod/pdf/income/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename
# done
#
# pdfjam pod/pdf/income/*.pdf --no-landscape --frame true --nup 5x4 --suffix complete --outfile ./income.pdf
#
# mv ./income.pdf pod/income_complete.pdf
#
# pdfjam pod/pdf/legal/*.pdf --no-landscape --nup 1x1 --suffix complete --outfile ./legal_notices.pdf
#
# mv ./legal_notices.pdf pod/legal_notices.pdf


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
