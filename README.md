# Chip Shop
_Build your Silicon Empire_

This document will evolve as tasks are added the contributors can contribute to.

**There have been some major changes to the game based on play testing, please feel free to create / amend cards as noted below, but some card elements may no longer be used. These instructions will be updated shortly.**

## Adding and editing cards
We welcome card additions and corrections and all will be considered. There are several steps a card will go through once you suggest an addition / modification, these are:

- Legally clearing any trademarks
- Editing flavour and card text
- Checking image supplied is printable
- Checking costs, scores and affects of card are appropriate
- Playtesting with the card

### Creating or Editing a card
Firstly, [fork this repo](https://github.com/GregariousMammal/Chip-Shop#fork-destination-box), you can [find instructions on how to do that here](https://help.github.com/articles/fork-a-repo/). If this is your first time with a version control system such as Git, don't worry, it's not as complex as it sounds and you open yourself to a world of awesomeness.

#### Something New?
Duplicate the file _template-card.md_ file in the top level *_cards* folder, rename it to the title of the card, replacing spaces between words with hyphens and make your edits (details coming soon) in that file.

#### Something to Change?
If you want to edit an existing card, then find the appropriately named card and make your changes, saving when you're done.

### Product Card Sections
There are two sections to a card, the _metadata_ or _variables_ and the card text, or 'flavour text', these sections are seperated by three dashed lines.

Below is a guide to the card metadata fields and what is appropriate to add to them.

`title`: This is the card title, add something short

`realtitle`: We attempt to get clearance to use the real names for everything in Chip Shop, in the rare case we can't, add what this card is inspired by in real life here. This field is not shown.

`cardtype`: There are three card types - product, event and staff. Choose one and enter that value.

`stafftype`: If this is a staff then there are three sub-types of staff - expert, genius and giant. Choose one and enter that value.

`hardwaretype`: If this is a product is it a _console_, _computer_ or _accessory_?

`image`: If you want to supply an image, add it to the _assets/images/cards_ folder and link to it here in the format _filename.filextension_.

`imageattribution`: Name of person or company who the ownership of the image belongs to.

`imagelicense`: License type

`imagelink`: Where did this image come from?

`staffcost`: How many staff resources does this card cost, if any.

`qualitycost`: How many quality resources does this card cost, if any.

`rdcost`: How many R&D resources does this card cost, if any.

`marketingcost`: How many marketing resources does this card cost, if any.

`longevitycost`: How many longevity points does this card cost, if any.

`moneycost`: How money does this card cost, if any.

`loyaltycost`: How many loyalty points does this card cost, if any.

`specialcost`: Is there a special cost associated with this card? This can be text.

`loyaltyscore`: How many loyalty points are gained from this card, if any.

`profitscore`: How much profit does this card gain, if any.

`profitlength`: If a card does result in profit, for how many turns?

`longevityscore`: How many longevity points are gained from this card, if any.

`rdscore`: How many R&D points are gained from this card, if any.

`specialscore`: Is there a special score associated with this card? This can be text.

`legal`: Add any trademark information here. We are happy to handle this for you.

`yearofrelease`: Add as much detail as possible regarding the release date here, this isn't used right now, but might be in the future.

`era`: What decade was the product released in?

`era_sub`: This value is based on the products original year of release. x0 - x1 = 1, x2 - x3 = 2, x4 - x5 = 3, x6 - x7 = 4, x8 - x9 = 5.

`region`: What region was the product released in?

`originalprice`: Add the original price in USD here, this isn't used right now, but might be in the future.

`concepts`: List of concepts associated with this card, find these listed on the [concepts](/manual#concepts) page.

The Flavour text should kept short. Try to stick to it's place in history at time of release and not what might or might not have happened later. Feel free to say that a product was bad if it really was!

### Saving and Submitting your Changes
Once you are done, you need to commit and push your changes to gitHub (The exact steps for this will depend on your preferred tools, but a quick search should get you a solution) and then [submit a pull request](https://help.github.com/articles/creating-a-pull-request/).

From here, we will review your suggestions and eventually merge the changes into the game.
