---
layout: post
title: 'Creating a Game with Markdown, Pandoc, Latex and PDFJam'
date: '2015-08-11'
---

The main reason for a lack of small posts on the progress of Chip Shop is that behind the scenes we have been working on some large stumbling blocks to push the game towards play testing. We wanted to focus on getting those completed over all else.

## New and Improved Cards
We have added a lot of [new cards](http://chipshopgame.com/cards/) but also spent time fleshing out the exisiting ones with flavour text, images, legal information and removing as much extraneous text as possible. I have always wanted the game to be as un-reliant on text as possible to allow for simpler translation and understanding for non-English speakers. This is hard work and the process is not complete, but we're getting there. We have accomplished this through the '[concepts](http://chipshopgame.com/manual/)' concept(!) and eventually these will be replaced with icons.

## Printing Cards
I set myself a challenge with Chip Shop to 'code' the game. This was because I am a coder but was also because I wanted the source of the game to be as open as possible and it seemed the best approach. This has meant that some steps have taken more time than if had used a more conventional approach, but I hope in the long run it will make everything easier and more collaborative.

The hardest part of this process so far has been how to generate a printable sheet of cards for players, i.e. a 3 x 3 grid of cards on an A4 sheet.

As I found people on the Internet wanting accomplish something similar and I couldn't get the complete answer, I'd like to share the details of the games production process with you... This will get technical!

## It all begins with Markdown
This isn't the first Chip Shop post that mentions that the base of all the cards are Markdown files and you can see them in [GitHub here](https://github.com/GregariousMammal/Chip-Shop/tree/master/_cards). Each card is formed of a title, description and a set of fields, not all of which are used now.

## The Build Script
After consideration a bash script that I run locally seemed the best option for now. There are better methods, but it works and I can improve the process later, transferring it to a Continuous Integration or Git Hooks.

[View the bash script on GitHub](https://github.com/GregariousMammal/Chip-Shop/blob/master/build.sh).

Let's step through this script:

### Getting Setup

```bash
bundle install
bundle update

rm -dfr _site
rm -dfr pod
```

The Chip Chop website is powered by [Jekyll](http://jekyllrb.com) and these commands ensure that all of the ruby dependencies Jekyll needs to build the website are up-to-date and we remove any existing website and print on demand folders.

### Build the website

```bash
jekyll build
mkdir -p pod/pdf/cards
```

Next we build the website and create a folder for the print on demand version of the cards.

### Generating PDFs from Markdown

```bash
for filename in _cards/*.md; do
  echo $filename
  pandoc --from=markdown+yaml_metadata_block --template _layouts/cards.latex -o pod/pdf/cards/"$(basename "$filename" .md)".pdf --latex-engine=xelatex $filename
done
```

Then the script processes every markdown file in the __cards_ directory ensuring that the markdown [front matter](http://jekyllrb.com/docs/frontmatter/) fields are observed (used for the game scores, costs and other meta data), using the _cards.latex_ template (we'll look at that later) and outputs a PDF with an appropriate name.

Finally:

```bash
pdfjam pod/pdf/cards/*.pdf --no-landscape --frame true --nup 3x3 --suffix complete --outfile ./cards.pdf
mv cards pod/cards_complete.pdf
```

I use [pdfjam](http://www2.warwick.ac.uk/fac/sci/statistics/staff/academic-research/firth/software/pdfjam/) (after research it seemed the best option) to create a 3x3 9up document of all the card pdfs in one printable document. pdfjam gives an error if you don't output into it's working directory, so then I move the file to where I actually want it (hopefully that's solveable).

And that's it, we have a website and printable PDFs of the game cards.

![Cards 9up](/assets/images/posts/9up-cards.png)

### The Latex file
A lot of the more complex magic for generating the card files from [Pandoc](http://pandoc.org/) takes place in a [latex](http://www.latex-project.org/) template.

[View the latex template on GitHub](https://github.com/GregariousMammal/Chip-Shop/blob/master/_layouts/cards.latex).

Latex is new to me, but this isn't complex so far. I'll explain what I changed or is needed to make the cards work.

```latex
\usepackage[paperheight=9.0cm,paperwidth=5.7cm,margin=0.5cm]{geometry}
\usepackage{multicol}
\usepackage{amsthm,amsmath,amssymb}
\usepackage{graphicx}
\graphicspath{{/Users/chrisward/Workspace/cs_jk/_site/assets/images/cards/}}
\usepackage{float}
\usepackage[utf8]{inputenc}
\usepackage{fontspec}
\setmainfont{VT323}
```

We need a certain page size and will use columns later on for the costs and scores of the cards. We are using graphics and custom fonts, so we also need those [packages](https://en.wikibooks.org/wiki/LaTeX/Package_Reference).

We're attempting to create a simple layout that is clear and uncluttered. Here's how we accomplished it:

```latex
\begin{document}
  \begin{flushright}
    {$title$}
  \end{flushright}
  $if(image)$
  \begin{figure}[H]
    \centering
    \includegraphics[height=2cm]{$image$}
  \end{figure}
  $endif$
  \begin{flushleft}
    \scriptsize{$body$}
  \end{flushleft}
  \scriptsize
  \begin{tabular}{ l l }
    Costs & Scores \\
    $if(staffcost)$ Staff: {$staffcost$} $endif$ & $if(loyaltyscore)$ Loyalty: {$loyaltyscore$} $endif$ \\
    $if(rdcost)$ RandD: {$rdcost$} $endif$ & $if(profitscore)$ Profit: {$profitscore$} for {$profitlength$} turns $endif$ \\
    $if(marketingcost)$ Marketing: {$marketingcost$} $endif$ & $if(longevityscore)$ Longevity: {$longevityscore$} $endif$ \\
    $if(longevitycost)$ Longevity: {$longevitycost$} $endif$ &  \\
    $if(moneycost)$ Money: {$moneycost$} $endif$ &
  \end{tabular}
  \begin{flushleft}
    $if(specialscore)$
    Special: {$specialscore$}
    $endif$
  \end{flushleft}
  \begin{center}
    $if(legal)$
    \tiny{$legal$}
    $endif$
  \end{center}
\end{document}
```

A lot of the above is reasonably self explanatory for anyone used to code or markup. We're creating the elements of the card, aligning them, setting font sizes and checking if there are values before outputting them so the card doesn't end up with empty fields. The costs and score values are in a two column layout. We resize the image to a particular size and centre it.

![Single Card](/assets/images/posts/single-card.png)

I run the build script with:

```bash
./build.sh
```

As there is a lot of image and PDF processing it takes about 5-10 minutes. I then have a separate script that deploys these folders to a web server.

## What's next
This process has taken me a while to get right, but it is now good enough to move forwards and finesse the process and layouts after playtesting.

Next I need to:
- Create PDF generation for the print-on-demand and premium versions and the different quality settings they will need.
- Include dependency installation in teh scrips so others can use them easily.

Any questions or comments let me know!
