---
title: One-Way Doors
categories: Design
---

Some decisions are easily reversible; others are one-way doors.

I prefer the former. There’s comfort in having a safety net. I like to be able to say, “I think this idea will work, but if it doesn’t, we can always roll it back.”

One-way doors are risky, but sometimes they’re necessary. (There’s a reason why “no risk, no reward” is a cliché. It’s true!)

## Reasons why a decision might be a one-way door:

**Engineering challenges.** Sometimes there may be technical challenges that make it difficult to revert a decision. If you show a design concept to an engineer and they say, “Okay, we’ll have to change the database structure a bit,” then you might have a one-way door.

**Major design changes.** Completely changing a particular flow, or significantly changing a layout, can be a one-way door. Even if there isn’t a technical reason why you can’t roll back the change, you run the risk of disorienting users or making them feel like the rug’s been pulled out from under them. Which leads to…

**User trust.** Making changes too quickly, or making big changes and then backtracking, can make a product feel unstable. Imagine a finance app, or a health app, or something else where stability is critical; making a major change and then reverting it could be catastrophic to the perception of the product.

## Types of decisions that could be a one-way door:

**Changing a permissions model.** It’s much easier to start with strict permissions and then open them up, than open permissions that are gradually locked down. If you have a feature that only admins can use, it feels like a bonus if suddenly regular users can use it too. Conversely, if everyone can use a certain feature, it’s almost impossible to lock it down to just admins without inciting a user revolt.

**Launching a feature that changes users’ workflows.** Any time you mess with users’ workflows, you’re playing with fire. Any change that gives users paths to new behaviors is risky to roll back, because users tend to be more loyal to their workflow than to a product. Example: a few months ago we launched a feature at askSpoke that allows users to create views based on saved filters. Now that it’s a popular feature, we couldn’t even consider removing it, since that would damage how our users structure their work.

**Features that touch third-party tools.** If your product includes any kind of integrations, it’s almost impossible to remove an integration once it’s been added. It can be done, but with difficulty — Twitter famously locked down its API, killing off much of the third-party ecosystem that was the source of a lot of the platform’s early innovation. The more external touchpoints a product has, the more permanent any related design changes feel.

## The takeaway

It’s always worth considering whether a design solution might be a one-way door. If it is, that’s fine! We don’t need to avoid one-way doors completely, but instead be cognizant of what they mean for our design and the product as a whole. There may be times when it’s worth going with a suboptimal design solution because it leaves options open, instead of picking the optimal solution that happens to be irreversible.