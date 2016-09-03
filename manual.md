---
layout: manualpage
title: Manual
permalink: /manual/
private: false
---

{% assign productDeck = site.cards | where:"cardtype", "product" %} {% assign eventDeck = site.cards | where:"cardtype", "event" %} {% assign personalityDeck = site.cards | where:"cardtype", "staff" %}

## Introduction

It is the dawn of a new era, with computers becoming affordable and desirable enough that millions now want them in their homes.

In Chip Shop you play the head of a fledgling computer company in 80s America striving for a piece of that action. You have a decade to make your mark, will it be for longevity, loyalty, units shifted or striking a balance between them all?

Throughout a decade as you attempt to build your empire, staff and events will help and hinder you. Will you be in a position to cope or will they be your downfall?

What about your competitors? Will they be working on something bigger, better and brighter than you? Or steal your ideas from under your feet and beat you to the hearts of the public.

## Object of the game

The aim of Chip Shop is to survive a decade, building and releasing products to match your ideals for the company. There are three scores in the game - profit, longevity and loyalty and you can choose which path(s) you wish to follow.

You begin the game with two personalities who will shape how you begin the game, but this is an industry where nothing stays the same for long.

By spending money and employing specialists you will need to gain resources for quality, R&D and marketing to build products that will then affect your scores. Players are generally working on their products in secret.

Every turn (a year) players draw event cards and these will also affect a player or players.

After ten years / rounds, total scores and the player with the highest combined score wins.

## Scoring

There are three values that combined at the end of the game make up a players final score.

### Longevity

Gained from how you decide to build your products, who you hire and certain events. Was (and is) your company a bright light that burn out fast or has it laid the ground for a long and sustainable future?

### Loyalty

Gained from how you decide to build your products, who you hire and certain events. Did you churn our products that no one wanted or loved or did you create sources of wonder and inspiration in your customer base?

### Profit

Players make profit from selling products, the more you sell for more time, the more profit, it's simple.

## Components

- {{ productDeck.size }} product cards
- {{ eventDeck.size }} event cards
- {{ personalityDeck.size }} personality cards
- Player Boards
- Main Game Board

## Setup

### Choose Starting Personalities

Determine who will go first by your favourite random method, and let them pick first from the personality deck, continue clockwise until the last player, then choose the second counter clockwise. I.e. the last player picks twice in a row and whoever picked the first personality first picks their second last.

You can either select personalities randomly or manually, they are reasonably balanced, for your first game, random is best.

#### Personality Special Skills

In addition to their starting Longevity and Loyalty values some personalities also have special abilities listed that you can use when you decide or when possible. Details of these are listed under the **Concepts** section.

#### Personality Starting Resources

In addition to their starting Longevity and Loyalty values some personalities bring starting resources with them, take the relevant counters and add them to your factory.

#### Personality Payment

You start Chip Shop as a young startup company and your starting personalities are willing to chase this dream, but this wont last for ever, when your company reaches a Longevity value of **12**, they will expect to be paid per turn the money value listed on their card. This continues from this point on-wards, if you lose Longevity after reaching this point, they still expect to be paid. The only way to stop paying personalities is to use one of the income stream actions or an event card to remove them from your company. Another option is to declare [bankruptcy](concepts/bankruptcy) and start as a new company with the same personalities.

### Main Board

Place the main board in the middle of the table. Add a score marker for each player to the Longevity and Loyalty tracks equal to the starting values (combined) of your starting personalities.

Add marker to square 1 on the turn track.

Put all resource tokens in easy reach of players.

Players start as a new company with 10 money.

Each player takes counters for a colour of their choosing, a player board, places it in front of them and places a player screen in front of the play board.

### Create The Specialist Staff Deck

Shuffle the specialist staff deck and place it on the left hand side of the main board, ideally next to the specialist staff track. There will always be specialist staff available equal to the number of played minus one.

### Create The Products Deck

Separate all accessory cards, shuffle them and place them on the accessory space of the Products track on the main board.

Separate remaining products into their matching 'sub era' piles, indicated by a number between 1 and 5, shuffle and place each pile on to its respective space on the products track.

### Create The Events Deck

Shuffle the events deck and place it near the main game board, ideally at the bottom edge to follow turn phase order.

## Playing the game

Use your favorite method for randomly selecting a starting player and play lasts for ten turns.

### Phases per Turn

Each turn consists of 5 short phases, these happen with all players undertaking each in sequence, clockwise. A turn ends after the last player has completed phase 5.

1. Start of the Year
2. Place Staff
3. Draw and play Events
4. Take Actions
5. Update products and scores
6. End of Year

#### 1\. Start of the Year

##### Advance Turn marker and Sub-eras

Move the turn marker one spot to the right (Not in 1st turn). If the new turn square has an arrow above it, then move all product card decks one square to the left. The left most card deck should be placed into the product discard pile, face down.

When a sub-era moves into the discard pile, all active products from that era will immediately become [irrelevant](concepts/irrelevant).

##### Receive Money from cards

In this phase players receive money for any products built (or other sources), removing one pile of money from the card and adding it into their factory space.

You will need money for many things in Chip Shop, but you should make sure to keep some in reserve for unforeseen circumstances.

If a player runs out of money they are declared [bankrupt](concepts/bankrupt) and must start the game again as a new company (as in setup phase). A player retains their remaining personalities, their loyalty score along with any other cards that state they remain with bankrupt players.

##### Refresh Specialist Staff on Offer

Shuffle the specialist cards back into the deck, draw and place new cards, laying one face up on each space on the Specialist Staff track of the main board, lay a number of cards equal to the number of players minus one.


#### 2\. Place Staff Tokens

Each turn a player has up to three staff tokens per turn they can place on the game board, the actions triggered by placing these staff happen in phase 4. Place tokens from top to bottom in the order players place them, this will reflect the order that actions happen in phase 4. Certain personalities an events may change the placing of these tokens.

There is no limit as to how many staff tokens can be placed on each square,but the resulting actions must happen in order.


#### 3\. Draw and play events

Despite best efforts in planning and strategy, life has a habit of throwing random occurrences that help or hinder plans. This is represented by the events deck which contains varying positive and negative affects for individual players, all players and the game.

Every player draws one cards in current turn order. Most event cards are drawn and played publicly and immediately. If a card is marked as '[choice](concepts/choice)' a player may hold on to the card to play when they wish. Unless otherwise stated a card applies to the player drawing it.

If an effect of the card is to draw more cards or take other actions, play them immediately or when you decide to play the card.

**Note**: Common sense should apply when drawing and playing event cards. For example, if a player is yet to build anything, then some cards may not yet apply and should be shuffled back into the deck. Likewise if a card implies it should be attached or allocated to a product, then do so, bearing in mind any constraints on the type of product.


#### 4\. Take Actions 

Actions are taken in from left to right, bottom to top (**reorder board.**) in the order of staff token placement.

##### Use Specialist Staff

Each turn your company will make money, but this money needs to be turned into resources needed to build and release a product, this are R&D, Marketing, and Quality.

The specialist staff are your main method for turning money into these resources, so use them wisely.

Different specialists help you generate different resources, and there are two different levels of specialists, experts and geniuses. They cost different amounts of money and convert a different amount of money to resources.

**Quality** Allocating more quality to a product in production will result in a higher longevity or loyalty score when the product is built. When the product is built a player may decide how they want to split the score between the two scores.

**Marketing** There's no point having a great idea and product if no one hears about it. Marketing resources represent an investment in the promotion of a product. It can also represent how familiar people are with the concepts behind a product.

Resources in marketing may be saved for later use, for some events, or moved to products in development. Allocating more marketing resources to a product in production will dictate the number of turns the product will make profit for. The amount of profit per turn is dictated by a players current loyalty score

_Product potential for profit = Current loyalty score for amount of marketing resources allocated turns_

**Research & Development** R&D Resources are used to draw a product card from the product area of the main board and move it into your factory.



##### Draw a Product

Products are the main focus of Chip Shop and players main aim should be to build them.

When taking this action, players pay the R&D cost when they have decided on the product to build. Each deck represents sub-eras of the 80s, and one square is roughly equal to 2 years, there is also a square for accessories. 

The default scores for products from each era are printed under the R&D cost (and summarised on factory player mats), these are scored when the product is released.

When taking this action, in token order players search teh deck for a product they would liek to build, places it in their factory, shuffles the deck and places it back.

If there are extra R&D building costs printed on the card (reflecting a more advanced product for teh era) then these must also be paid before you can place the product into your factory.

Some personalities may reduce the building costs of certain products, if you are going to use the ability of a personality, then declare it and pay the appropriate reduced cost.

You may also draw products from the product discard pile to the left of the board, these cost no R&D but you lose 1 loyalty and 1 longevity .

Whilst the resources needed for release are still being acquired, keep the product behind your player screen in the matching square on the player board. When it's built, move it in front of your screen.

Whilst products are roughly split into their respective sub-eras and most are fairly equal, there are some cards that have slight advantages and disadvantages over others.

**Note**: Products that are never completed will negatively affect scores at the end of the game, so don't take on too much at once.

**Note**: During certain _End of Year_ phases in the game, product card piles will move one space to left (and into the discard pile if there are no spaces remaining to the left), representing time passing and research advancing. This will make any products you still have active from this era **irrelevant**, so don't keep out of date products around for too long.

##### Use income stream

There are times when you need a cash injection into your company to keep wages paid or push forward for a big release. If you decide to make use of an income stream, place a counter representing your colour into the income stream of choice and follow the instructions written there. Players may only take advantage of income streams **three** times in the game and all will have some kind of negative affect on your company in the short or long term. If a player has already taken three income streams then they may take no more.


#### 5. Update products and scores

In this phase the status of products are updated and scores adjusted.

In current turn order players take the following steps:

1. If a player is ready to build a product, **discard all the resources allocated to it** and move the product card from the player factory into the public playing area.
2. Add piles of money tokens equal to the number of turns the product will remain in play (marketing resources allocated), with each pile containing tokens equal to the profits per turn score (players current loyalty score).
3. Adjust scores based on the product(s) built. Any revenue the product brings doesn't occur until the beginning of the next turn.



#### 6. End of the Year

This final phase is an admin phase, with players checking that various rules are still in check, paying wages, checking products are still current and other tasks.

In current turn order, players should undertake these tasks:

1. If an already built product has no remaining piles of money, move it to the game discard pile. If the product has accessories attached to it, then also move those to the discard pile.
2. If your longevity score is 12 or more, from the current turn onwards, you need to pay your personalities wages. Discard the money to the bank.
2. Ensure you have at least one money available, if not, you are declared bankrupt.
3. Determine turn order for the next turn. This is in order of longevity score, from lowest to highest. In the event of a tie for longevity score, then highest loyalty score wins, if this ties, then use the turn order from last turn.

**Note**: If a player is unable to pay costs, they must take an immediate income stream action to cover their costs. If this isn't possible, they are declared bankrupt.

## Ending the game

After ten turns the game is over!

This is how scoring works:

- For each product a player still has in production they lose loyalty or longevity (players choice and may be distributed) scores equal to the sub era the card was drawn from.
- If a player doesn't have the money left over to pay back each outstanding loan, players lose five points of Longevity for each loan.
- Players score 1 point for every product they completed.
- Players score 1 point for every ten money they still have.
- Longevity and Loyalty scores remain at their original value.

After this all scores are combined, any special cards considered and applied and the player with the most points wins.


## Game Concepts

{% for concept in site.concepts %}

### {{ concept.title }}

{{ concept.content }} {% endfor %}
