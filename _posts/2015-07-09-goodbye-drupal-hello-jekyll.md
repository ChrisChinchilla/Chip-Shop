---
layout: post
title: 'Goodbye Drupal, Hello Jekyll'
date: '2015-07-09'
---

Sorry for the lack of updates in a while. There have been two main reasons for this, other commitments kept me busy and I've been reworking a lot of the technology stack that powers Chip Shop. I'd like to tell you more about updates to the later.

I have been a [Drupal](http://drupal.org) developer for many years. I have contributed to core, to documentation, run meetups and code sprints and developed almost exclusively in Drupal for over seven years. Therefore when it came to developing web applications for my own projects, Drupal always seemed to be the obvious choice for me.

Whilst Drupal certainly has its place, for me, with my own personal projects, I am turning my back on using the platform. At the moment I want to focus primarily on content, with some loose and simple features. I had too many frustrating sessions with Drupal where I would have spent hours working on some new content, layout and CSS and then want to deploy it from my local machine live. _Then the fun would begin_. I would frequently spend as much time trying to package new changes into features or deployable nuggets of code than I did on making the changes in the first place. This was inefficient, time consuming, frustrating and would destroy my creativity.

Over the past year I have been getting enthusiastic about [Markdown](https://en.wikipedia.org/wiki/Markdown) and it seemed to me a perfect way to almost be able to write once and repurpose in multiple outputs. You can read some of my previous posts on how I have been moving in this direction and something like [Jekyll](http://jekyllrb.com) and static site generators is an obvious destination.

I can theoretically write, push the change and it's live. In reality there are one or two more steps, but they are trivial and I could remove them permanently after maybe an hour of configuration.

So I decided it was time to migrate the Drupal site of Chip Shop to Jekyll and that's what's been keeping me busy the past month or so. It was largely an easy process, for example, the theming took me about 4 hours, far less time than with Drupal. The bigger complexities were recreating the PDF generation I need for the print output of the game, but I will save that for future post. I will look to move the main [Gregarious Mammal](http://gregariousmammal.com) website to Jekyll at some point and as part of this I need to figure out how to export the old Drupal content to Markdown files, that's why the Chip Shop production blog is just this one post right now.

To get more insight into how I set up the structure of the game, I recommend you dig around the [GitHub](https://github.com/GregariousMammal/Chip-Shop) repository and I will explain much more of it over the next months.

In summary, after a few months working behind the scenes there will be more updates happening far quicker now as I work towards a play testing release.
