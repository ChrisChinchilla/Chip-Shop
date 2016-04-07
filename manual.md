---
layout: manualpage
title: Manual
permalink: /manual/
private: false
---
{% assign productDeck = site.cards | where:"cardtype", "product" %}
{% assign eventDeck = site.cards | where:"cardtype", "event" %}
{% assign personalityDeck = site.cards | where:"cardtype", "staff" %}

## Introduction
It is the dawn of a new era, with computers becoming affordable and desirable enough that millions now want them in their homes.

In Chip Shop you play the head of a fledgling computer company in 80s America striving for a piece of that action. You have a decade to make your mark, will it be for longevity, loyalty, units shifted or striking a balance between them all?

Throughout a decade as you attempt to build your empire, staff and events will help and hinder you. Will you be in a position to cope or will they be your downfall?

What about your competitors? Will they be working on something bigger, better and brighter than you? Or just steal your ideas from under your feet and beat you to the hearts of the public.

## Object of the game
The aim of Chip Shop is to survive a decade, building and releasing products to match your ideals for the company. There are three scores in the game -  profit, longevity and loyalty and you can choose which path(s) you wish to follow.

By spending money you will need to gain resources for quality, R&D and marketing to build products that will then affect your scores. Players are generally working on their products in secret.

During the course of the game certain personalities and specialists may be attracted to your company and will bring certain positive and negative effects. Every turn (a year) players draw event cards and these will also affect a player or players.

After ten years / rounds, total scores and the player with the highest combined score wins.

## Scoring
There are three values that combined at the end of the game make up a players final score.

### Longevity
Gained from how you decide to build your products, who you hire and certain events. Was (and is) your company a bright light that burn out fast or has it laid the ground for a long and sustainable future?

### Loyalty
Gained from how you decide to build your products, who you hire and certain events. Did you just churn our products that no one wanted or loved or did you create sources of wonder and inspiration in your customer base?

### Profit
Profit is made from selling products, the more you sell for more time, the more profit, it's simple.

## Components

- {{ productDeck.size }} product cards
- {{ eventDeck.size }} event cards
- {{ personalityDeck.size }} personality cards
- Player Boards
- Main Game Board

## Setup
### Main Board
Place the main board in the middle of the table. Add a score marker for each player at 3 to the Longevity and Loyalty tracks.

Add marker to square 1 on the turn track.

Put all resource tokens in easy reach of players.

### Create The Specialist Staff Deck
Shuffle the specialist staff deck and place it on the left hand side of the main board, ideally next to the specialist staff track.

### Create The Products Deck
Separate all accessory cards, shuffle them and place them on the accessory space of the Products track on the main board.

Separate remaining products into their matching 'sub era' piles, indicated by a number between 1 and 5, shuffle and place each pile on to its respective space on the products track.

### Create The Events Deck
Shuffle the events deck and place it near the main game board, ideally at the bottom edge to follow turn phase order.

### Players Start a New Company
Players start as a new company with 20 money.

Each player takes counters for a colour of their choosing, a player board, places it in front of them and places a player screen in front of the play board.

## Playing the game
Use your favorite method for randomly selecting a starting player and play lasts for ten turns.

### Phases per Turn
Each turn consists of 5 short phases, these happen with all players undertaking each in sequence, clockwise. A turn ends after the last player has completed phase 5.

1. Start of the Year
2. Take actions
3. Update products and scores
4. Draw and play events
5. End of Year

#### 1. Start of the Year
##### Advance Turn marker and Sub-eras
Move the turn marker one spot to the right (Not in 1st turn). If the new turn square has an arrow above it, then move all product card decks one square to the left. The left most card deck should be placed into the product discard pile, face down.

When a sub-era moves into the discard pile, all active products from that era will immediately become [irrelevant](concepts/irrelevant), making half profits for one final turn and then removed from the game.

##### Receive Money from cards
In this phase players receive money for any products built (or other sources), removing one pile of money from the card and adding it into their factory space.

Everything in Chip Shop needs money. Staff need wages each turn and resources required by products also require money. Some events and income streams may also require some money left aside to be taken advantage of.

If a player runs out of money they are declared [bankrupt](concepts/bankrupt) and must start the game again as a new company (as in setup phase), the only scores a player retains is their loyalty along with any other cards that state they remain with bankrupt players.

##### Refresh Specialist Staff on Offer
Draw five cards from the Specialist Staff deck and lay one face up on each space on the Specialist Staff track of the main board.

#### 2. Take Actions
Each turn a player has up to three actions per turn that can be any combination of the below.

##### Hire Specialist Staff
These are special individuals who players may want to recruit to their company. Specialist staff all have skills and traits that will positively affect statistics and chances of winning the game.

A player taking this action isn't guaranteed that a specialist staff of their choice will join their company, rather taking this action starts a bidding round for that players chosen specialist staff card.

In order of longevity score (highest to lowest) or in the case of ties, current turn order, players can decide if they would like the opportunity to hire the specialist staff member. The money and other costs printed on a card indicate the minimum they demand. Bidding is typically won by the player who bids the highest yearly wage to the specialist staff member, but in the case of money bid ties or lower ranking specialist staff cards where money bid is likely to be low, then players may use their loyalty or longevity scores to win a bidding round, i.e.

> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quid de Platone aut de Democrito loquar?

Once a winning bid has been set, pay the costs and place the specialist staff member in your factory. Remember that these specialist staff members will need paying each turn at the values indicated on their card.

**Note**: Many specialist staff members are attracted to different factors, for example money is less important and a company with high loyalty more so. These special cases will be noted on cards and any of these extra rules can override the order of bidding or who has the potential to win.

##### Buy and allocate resources
In Chip Shop 1 money is equal to 1 resource of any type. When building a product, resources need to be allocated to them and the quantity of resources allocated affect a product in different ways.

Taking this action, players may buy new resources and re-allocate existing resources between their factory and products in production. Resources cannot be changed once purchased, i.e. a 'Marketing' resource cannot change to a 'Quality' resource at a later date.

**Quality**
Allocating more quality to a product in production will result in a higher longevity or loyalty score when the product is built. When the product is built a player may decide how they want to split the score between the two scores.

**Marketing**
There's no point having a great idea and product if no one hears about it. Marketing resources represent an investment in the promotion of a product. It can also represent how familiar people are with the concepts behind a product.

Resources in the marketing department may be saved for later use, some events, or moved to products in development. Allocating more marketing resources to a product in production will dictate the number of turns the product will make profit for. The amount of profit per turn is dictated by a players current loyalty score

_Product potential for profit = Current loyalty score for amount of marketing resources allocated turns_

**Research & Development**
R&D Resources are generally saved to be used to allocate to a product card drawn from the product area of the main board. Once the product has been built, the resources are discarded. Spare R&D resources can also be used to draw additional cards from the products track in the action phase.

##### Draw a Product
Products are the main focus of Chip Shop and players main aim should be to build them.

When taking this action, players decide from which slot on the products track of the main board they wish to draw a card from. These represent sub-eras of the 80s, and one square is roughly equal to 2 years, there is also a square for accessories.

**Note**: Players may discard spare R&D resources to draw additional cards equal to the resources discarded. Players may retain any number of the cards they draw.

The costs and scores for cards drawn from each space are printed below the card slot and on each card for reference. The costs indicated must be acquired and allocated before the product is released to the public. You may also draw products from the product discard pile to the left of the board, these cost no R&D but lose loyalty and longevity. Whilst resources are still being acquired, keep the product behind your player screen in the matching square on the player board. When it's built, move it in front of your screen.

For more details on how other resources affect products, see the **Allocating Resources** section.

Whilst products are roughly split into their respective sub-eras and most are fairly equal, there are some cards that have slight advantages and disadvantages over others.

**Note**: Products that are never completed will negatively affect scores at the end of the game, so don't take on too much at once.

**Note**: During certain _End of Year_ phases in the game, product card piles will move one space to left (and into the discard pile if there are no spaces remaining to the left), representing time passing and research advancing.

##### Use income stream
There are times when you need a cash injection into your company to keep wages paid or push forward for a big release. If you decide to make use of an income stream, place a counter representing your colour into the income stream of choice and follow the instructions written there. Players may only take advantage of income streams **three** times in the game and all will have some kind of negative affect on your company in the short or long term. If a player has already taken three income streams then they may take no more.

#### 3. Update products and scores
In this phase the status of products are updated and scores adjusted.

In current turn order players take the following steps:

1. If a player is ready to build a product, **discard all the resources allocated to it** and move the product card from the player factory into the public playing area.
2. Add piles of money tokens equal to the number of turns the product will remain in play (marketing resources allocated), with each pile containing tokens equal to the profits per turn score (players current loyalty score).
3. Adjust scores based on the product(s) built. Any revenue the product brings doesn't occur until the beginning of the next turn.

#### 4. Draw and play events
Despite best efforts in planning and strategy, life has a habit of throwing random occurrences that help or hinder plans. This is represented by the events deck which contains varying positive and negative affects for individual players, all players and the game.

Every player draws one cards in current turn order. Most event cards are drawn and played publicly and immediately. If a card is marked as '[choice](concepts/choice)' a player may hold on to the card to play when they wish. Unless otherwise stated a card applies to the player drawing it.

If an effect of the card is to draw more cards or take other actions, play them immediately or when you decide to play the card.

**Note**: Common sense should apply when drawing and playing event cards. For example, if a player is yet to build anything, then some cards may not yet apply and should be discarded. Likewise if a card implies it should be attached or allocated to a product, then do so, bearing in mind any constraints on the type of product.

#### 5. End of the Year
This final phase is an admin phase, with players checking that various rules are still in check, paying wages, checking products are still current and other tasks.

In current turn order, players should undertake these tasks:

1. If an already built product has no remaining piles of money, move it to the discard pile. If the product has accessories attached to it, then also move those to the discard pile.
2. Pay for your companies upkeep to the bank. This is equal to your current longevity score.
3. Ensure you have at least one resource on your player mat or on a product. If not, you are declared bankrupt.
4. Determine turn order for the next turn. This is in order of longevity score, from lowest to highest. In the event of a tie for longevity score, then highest loyalty score wins, if this ties, then use the turn order from last turn.

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

## Notes
### Accessories
Accessory products are always attached to a built non-accessory product. Each accessory will specify what it can be attached to and any other requirements. Unless specified, an accessory remains in play for as long as the product it is attached to is in play. Some accessories increase the number of turns a product will be in play for.

Generally all accessories make one money per turn for the life of the product they are attached to, however, cards and specialist staff may change this.

## Game Concepts

{% for concept in site.concepts %}
  <h3>{{ concept.title }}</h3>
  {{ concept.content }}
{% endfor %}
