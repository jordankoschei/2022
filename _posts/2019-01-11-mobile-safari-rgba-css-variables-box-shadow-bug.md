---
title: "Finding an iOS Mobile Safari CSS Bug: rgba() with CSS variables in box-shadow"
categories: Design
---

<p class="infobox">
  This post was written about a previous version of this website and no longer applies. I'm saving it here for posterity in case somebody encounters a similar bug.
</p>

Right after launching the latest update to this website, I caught a mysterious visual glitch — link underlines, which are supposed to be pink in most places, were showing up black in Mobile Safari.

<figure>
  <img src="{{ '/assets/img/writing/mobile-safari-rgba-bug.jpg' | absolute_url }}" alt="iOS Mobile Safari Box-Shadow RGBA CSS Variable Bug">
  <figcaption>On the left, links in the content are underlined black. On the right, they're underlined properly with transparent pink. Nav links in the header are unaffected because those underlines are pseudo-elements with transparent backgrounds, and don't use box-shadows at all.</figcaption>
</figure>

To achieve the accent color link underlines throughout the site, I set `text-decoration: none`  and fake the underlines with an inset box-shadow:

```css
box-shadow: inset 0 -2px 0 rgba(var(--brand-color), 0.5)
```

This works fine on Chrome, Safari, and Firefox, but on Mobile Safari it shows as straight black.

## Why CSS variables?

Some background: I recently added the ability to change the accent color on specific pages of the site. On different case studies, for example, the accent color changes to match the brand of the project being discussed.

I do this by setting a variable in the front-matter of each piece of content, with the default set to the site’s brand color in `config.yml`. I turn this into a CSS variable in the `<head>` of each page.

Since I need to change the transparency of that color, I don’t store it as a hex value; I store it as RGB values, so I can use it as the first argument of `rgba()`, like so:

```css
rgba(var(--brand-color), 0.5)
```

## Finding the Solution
Some quick sleuthing shows that I’m not the first person to run into this issue — there’s a [question on Stack Overflow](https://stackoverflow.com/questions/49837858/css-custom-properties-in-box-shadow-color-function-render-incorrectly-in-safari) describing the exact same thing.

The accepted answer suggests that we can fix this by making a CSS variable out of the full string of box-shadow arguments, like so:

```css
:root {
    --color: 130, 16, 253;
    --shadowColor: 0px 10px 50px 0px rgba(var(--color), 0.08);
}
```

I needed transparent accent colors in more places than just box-shadows, though, so I followed the suggestion in one of the [unaccepted answers](https://stackoverflow.com/a/50757688) instead, and made separate variables for each of the opacities I use throughout the site:

```html
<head>
  
  ...

  <style>
    :root {
      --brand-color: rgba({{ page.color }}, 1);
      --brand-color-point97: rgba({{ page.color }}, .97);
      --brand-color-point9: rgba({{ page.color }}, .9);
      --brand-color-point5: rgba({{ page.color }}, .5);
    }
  </style>
</head>
```

Sure enough, this works! Now the box-shadows render properly on Mobile Safari as well as elsewhere.

It’s not as elegant as my first implementation, but hey, that’s front-end development. If it works, it works.
