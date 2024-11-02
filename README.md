## Introduction

This is a tiny experiment in making a text adventure game based on Nushell.

I have two threads I'm pulling on with it:

1. My girls are now 7 and 5. I have vague memories of using a
   [Dick Smith Wizzard](https://ausretrogamer.com/retrospective-a-tale-of-dick-smiths-wizzard/)
   when I was 7: coding in the BASIC programming language, pixelated green text
   on a black screen.

   A thought I've been mulling over is that modern computers are too "finished"
   compared to the kind of exploratory entry points my generation had in the
   early 80s. Gorgeous 3D graphics on a touch iPad screen are amazing, but how
   do you incrementally "add" to that experience and notice what you've changed?

   I'm curious if it's possible to recreate the limitations of that pixelated,
   text-driven world as an entry point for this new generation.

2. Maggie Appleton's command line wall and Nushell as a pole vault to get people
   over it (Todo: flesh out this thought).

It took my girls about 30 minutes to muddle through this "experience," with a
lot of coaching.

Our family is really strict on screen time. The only exposure they've had is
shows like [Stillwater](https://en.wikipedia.org/wiki/Stillwater_(TV_series)) ,
maybe 30 minutes a week, and an occasional 10-minute iPad session with "the Bear
game" (Khan Academy Kids).

The 7-year-old could read about 95% of the words, and my 5-year-old was
completely dependent on her. Neither of them had typed on a real laptop keyboard
before. My biggest takeaway is that everything felt too open-ended, and sharp.
Holding a key for too long produced duplicates. Pressing the delete key to
correct mistakes required a level of precision they weren't particularly up for.

Before starting, I thought, this is nowhere near enough experience, but I was
curious to get them to try it—to get feedback on whether this was going to work
at all. Then, within the first 2 minutes, I thought, this is going to be
completely inaccessible. Particularly having them type ".yaml" after
`open Chest` or even needing to capitalize the `C` immediately felt like a
bridge too far.

I was impressed they got through it, though. As little as this currently is, it
was pretty taxing for them. They wouldn't have been able to do more in a first
sitting.

It seemed like puzzling through "what's a command?" was more of the adventure
than "chests" and "berries".

## The 'game' (so far)

There's not much to it (haha). This is a tiny start.

To set up for a player:

- At the Nushell REPL:
  - `git clone ...`
  - `use game/commands.nu *`
  - `cd room`
  - `bat ../intro.md`

Then let the player muddle through it, gently providing advice when they come
off the rails.

I'm not sure if things should be more guided—e.g., it's just not possible to
type things that aren't correct (in which case, maybe raw Nushell isn't a good
base)—or if the ability to have things completely not work with an adult-style
error message is part of the point.

The entirety of the "experience" so far is to notice the Berries in the Chest
and moving them to the inventory.
