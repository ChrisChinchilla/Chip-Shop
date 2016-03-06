---
layout: page
title: About
permalink: /about/
private: false
---

{% assign productDeck = site.cards | where:"cardtype", "product" %}
{% assign eventDeck = site.cards | where:"cardtype", "event" %}
{% assign personalityDeck = site.cards | where:"cardtype", "staff" %}

{% picture mediumscreen posts/card_previews.png alt="" %}

Chip Shop begins in the American 1980s, but expansions are planned to allow for game play in different eras, regions and markets.

Aside from official expansions or 'updates', the tools and processes used to create the game have been open-sourced, allowing the community to create its own additions, or 'patches'.

## Print at Home

Currently, Chip Shop is available in a Print-at-Home version and you will also need some generic counters for scoring. Boxed and Tabletop Simulator versions are coming soon.

Chip Shop consists of:

- {{ productDeck.size }} product cards
- {{ eventDeck.size }} event cards
- {{ personalityDeck.size }} personality cards
- Player Boards
- Main Game Board

All available for purchase at 'pay-what-you-feel', from a minimum of $1 (a restriction of the service we use, sorry).

{% picture mediumscreen posts/player_mat.png alt="" %}

{% picture mediumscreen posts/main_board_a3.png alt="" %}
