---
title: How I Shrank my CSS by 84kb by Refactoring with ITCSS
categories: Design
excerpt: Before the refactor, my CSS weighed 111kb. After the refactor, it weighed 27kb.
---

When I relaunched my personal website at the beginning of the year, I wasn’t happy with the code quality. I’d been working quickly to get it launched on time, and some of my CSS had gotten sloppy. I decided that, as soon as I had some spare time, I’d refactor it.

Before the refactor, my CSS weighed 111kb. After the refactor, it weighed 27kb.

I’ve used several different CSS architectures in the past, but a personal site is a perfect opportunity to experiment, so I decided to try the ITCSS methodology proposed by [Harry Roberts](http://csswizardry.com/). There’s very little about it online — what looks like a primer on [Creative Bloq](http://www.creativebloq.com/web-design/manage-large-scale-web-projects-new-css-architecture-itcss-41514731) is actually a plug to get you to buy their print version, where the real information is published (as if they were looking for ways to make themselves even more irrelevant). Despite this, on the basis of Roberts’ reputation as a front-end architect, I decided to dig up whatever I could find and give it a try.

I was able to cobble together the basics by watching this talk that Harry Roberts gave at a meetup in Serbia:

<iframe src="https://www.youtube.com/embed/1OKZOV-iLj4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Here are the [slides](https://speakerdeck.com/dafed/managing-css-projects-with-itcss), which I found helpful.

Full disclosure: I didn’t follow the methodology to the letter, but rather adapted it to my own uses. That’s the beauty of choosing a CSS architecture like ITCSS, BEM, or OOCSS rather than a full-on framework like Bootstrap or Foundation — you have the flexibility to pick and choose what works for you.

## What Problem is ITCSS Solving?

CSS specificity is a double-edged sword. When harnessed properly, the cascade is hugely helpful in crafting lean, non-repetitive code. When misused or misunderstood, it leads to tangled stylesheets that are constantly fighting against previously-defined styles. It’s the difference between following a current or swimming upstream.

<figure>
    <img src="/assets/img/writing/css-graph.webp" alt="CSS specficity graph" />
    <figcaption>The CSS specificity graph, from Harry Roberts’ ITCSS deck.</figcaption>
</figure>

The ITCSS architecture forces you to write your code in specificity order. The name — Inverted Triangle CSS — refers to the narrowing focus of each layer: base elements are styled first, followed by reusable objects, followed by more specific components, et cetera.

## The Toolkit

ITCSS doesn’t prescribe its own tooling — you can use it with Sass, LESS, PostCSS, whatever — but I think it’s particularly useful if you’re using a preprocessor.

I stuck with my usual kit and used Sass as a preprocessor and Gulp as my build system.

## Organization

Everything happens in a master Sass file, which calls partials in a specific order.

- **Settings**. These are preprocessor variables for later use.
- **Tools**. These include all the mixins and functions.
- **Generic**. This includes all the third-party CSS used throughout the site.
- **Base**. These are element styles — no classes or IDs. Base typography styles go here, as well as anything needed to style raw elements.
- **Objects**. I’m a fan of object-oriented CSS, though I suppose you could remove this layer if you don’t use it. This layer is mostly layout-driven, and doesn’t include anything cosmetic. I included structural objects such as `.inner` and `.container` here, as well as some oft-repeated constructs such as `.post`s and `.hero`.
- **Components**. This is mostly a cosmetic layer — this is where I included more specific styling instructions for objects. Without the components layer, the site would still have its structure, but would look like a gray-box wireframe.
- **Trumps** (no relation). These are styles that override other styles, and should be used very sparingly. Color overrides, forced floats, and text alignment classes can go here. This is the only place in your CSS that the `!important` tag is acceptable.

<figure>
    <img src="/assets/img/writing/inverted-triangle.webp" alt="ITCSS inverted triangle" />
    <figcaption>The inverted triangle, from Harry Roberts’ ITCSS deck.</figcaption>
</figure>

Now, to be honest, I cheated a little. I included some cosmetics in the **objects** folder and kept **components** pretty lean. All told, this is what my file structure looked like:

```
/settings
    _variables
/tools
    _clearfix
    _hidetext
    _sizing
    _typography
    _vertical
    _cover
/generic
    _boxsizing
    _media
    _monokai
    _normalize
    _typecsset
/base
    _images
    _links
    _page
    _typography
/objects
    _inner
    _images
    _hero
    _container
    _content
    _sidebar
    _header
    _footer
    _posts
    _pagination
    _categories
    _home
    _links
/components
    _hero
    _categories
/trumps
    _home
    _media
    _single
    _index
```

Roberts recommends keeping stylesheets on a single layer, without folders, since that compels future developers to make intentional choices about where files belong rather than allowing them to get lazy and just dump everything into a “components” folder.

Since this is a personal project and I’m the only one who will ever touch the code, I decided to organize everything into folders. Oh, and also because I’m neurotic when it comes to code organization and a flat structure would drive me crazy.

## Results

Much of the refactoring process involved breaking apart existing code into different segments — the element itself, the layout object, the aesthetic component — and finding repetition that could be abstracted away.

All told, this process removed 84kb from the site’s stylesheet, dropping it from 111kb to 27kb.

Refactoring CSS naturally led to some additional changes. Often, when the structure of some CSS is unwieldy, it’s a sign of an underlying problem with the HTML. The whole site is now leaner and faster than it was before.