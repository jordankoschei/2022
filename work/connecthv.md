---
nav: work
title: ConnectHV
layout: page
---

<div class="infobox">
    ConnectHV is a solo project that represents the fullest expression of my skills — an online community platform for the Hudson Valley creative scene that I've designed and built from scratch. You should check out the <a href="https://connecthv.com" target="_blank">live site</a>.
</div>

ConnectHV is an online community platform for the Hudson Valley’s creative scene. I designed and built every part of this platform, from research and user flows to high-fidelity mockups and final in-code iteration, showcasing my ability to take a product from zero to launch.

<figure>
    <video src="{{ '/assets/img/work/connecthv-hero.mp4' | absolute_url }}" autoplay muted loop playsinline></video>
</figure>

## Overview

The Hudson Valley is big, stretching 150 miles from New York City to Albany. It's home to over 2.5 million people and a vibrant creative scene, but for over a decade I've been chasing an idea: _how do we connect those people?_

ConnectHV is my attempt to answer that question. A distributed geography needs a distributed platform to make it possible to find and connect future collaborators, colleagues, cofounders, and creative confidantes.

ConnectHV allows anyone with a Hudson Valley zip code to create a profile that includes their name, bio, images and videos of their work, and a way to find them and connect with them. It includes robust search and filtering, so users can search for "web designers in New Paltz" or "event photographers in Dutchess County" or "software engineers anywhere in the Hudson Valley."

It's designed in Figma, supported by a whole lot of strategy and product docs, and built in Laravel (a PHP framework) along with AlpineJS and Tailwind. It's hosted on Digital Ocean and AWS.

The directory has grown to over 500 profiles since launching, and spun out a vibrant Slack community with over 1,000 members and a monthly event series that regularly attracts hundreds of attendees.

## Version 1 — Early experiments

The first version of ConnectHV centered around a dynamic map, which would pan and zoom to relevant places as visitors navigated around the site. The index would include two types of entities, each given equal weight: **people** and **businesses**.

<figure>
    <img src="{{ '/assets/img/work/connecthv-v1-home.png' | absolute_url }}" alt="ConnectHV early home page iteration with filtering system and map">
    <figcaption>An early iteration of the ConnectHV home page, with a focus on the filtering system and map.</figcaption>
</figure>

<figure>
    <img src="{{ '/assets/img/work/connecthv-v1-businesses.png' | absolute_url }}" alt="ConnectHV early businesses page iteration">
    <figcaption>An early iteration of the Places index for ConnectHV.</figcaption>
</figure>

Users would also be able to navigate to **destinations** — towns, villages, or cities within the Hudson Valley — and see a list of people and businesses in that area.

<figure>
    <img src="{{ '/assets/img/work/connecthv-v1-destination-v1.png' | absolute_url }}" alt="ConnectHV proposed Destination page version one">
    <figcaption>One version of the proposed Destination page for ConnectHV.</figcaption>
</figure>

<figure>
    <img src="{{ '/assets/img/work/connecthv-v1-destination-v2.png' | absolute_url }}" alt="ConnectHV proposed Destination page version two">
    <figcaption>Another version of the proposed Destination page for ConnectHV.</figcaption>
</figure>

Businesses would have their own profile pages, which looked similar to the People pages:

<figure>
    <img src="{{ '/assets/img/work/connecthv-v1-place.png' | absolute_url }}" alt="ConnectHV early business profile page with businesses and people as entities">
</figure>

## Version 1.1 — Further explorations

I continued to refine the homepage, building out a more sophisticated search and filtering system:

<figure>
    <img src="{{ '/assets/img/work/connecthv-v2-home.png' | absolute_url }}" alt="ConnectHV refined home page with search and filtering system">
    <figcaption>A more refined version of the home page, with a focus on the search/filtering system and map.</figcaption>
</figure>

One challenge I foresaw was how to explain the value of the site, so I explored some variations of a hero section to highlight its purpose. (This version never made the final cut.)

<figure>
    <img src="{{ '/assets/img/work/connecthv-v2-hero.png' | absolute_url }}" alt="ConnectHV hero section exploration for logged-out visitors">
    <figcaption>An exploration of a hero section to explain the purpose of ConnectHV to logged-out visitors.</figcaption>
</figure>

I also explored features such as universal search, to make it easier to navigate the site from anywhere.

<figure>
    <img src="{{ '/assets/img/work/connecthv-v2-search.png' | absolute_url }}" alt="ConnectHV universal search feature exploration">
    <figcaption>An exploration of a universal search feature.</figcaption>
</figure>

This version was eventually shipped, and became the basis for all future work.

## Version 2 — A new direction

Early feedback suggested that the site needed to be more focused, with an emphasis on people over businesses and places. I began exploring leaner versions of the site in Figma, which would remove overcomplications such as the map. (That was a tough decision, since I'd grown very attached to the map and had poured a lot of time into it, but sometimes the only way to move forward is to kill your darlings.)

Research calls indicated that some people were reluctant to join _yet another network_, especially when they were already active in various local organizations. I started exploring
a version that included portals for various regional organizations, which would give people a way to find each other across boundaries — a "network of networks."

<figure>
    <img src="{{ '/assets/img/work/connecthv-v3-org.jpg' | absolute_url }}" alt="ConnectHV version with portals for regional organizations">
    <figcaption>This version would have portals for various regional organizations.</figcaption>
</figure>

The blue color scheme and branding I'd been previously using wasn't really clicking for me, so I switched to using teal as the primary color. Instead of blue to represent the water of theHudson River, I used teal to represent the dominant colors of the land and waater together.

<figure>
    <img src="{{ '/assets/img/work/connecthv-v3-people.png' | absolute_url }}" alt="ConnectHV People index in this version">
    <figcaption>This is what the People index would look like in this version.</figcaption>
</figure>

## Version 3 — ConnectHV today

The previous version wasn't visual enough for my taste, and I continued to refine the design until I landed on this version, with a compelling video hero and a focus on the people and activity that drive the site.

<figure>
    <img src="{{ '/assets/img/work/connecthv-v4-home.jpg' | absolute_url }}" alt="ConnectHV launched version with activity feed">
    <figcaption>This iteration is almost exactly the version that was launched, showing an activity feed with posts and people.</figcaption>
</figure>

<figure>
    <img src="{{ '/assets/img/work/connecthv-v4-profile.jpg' | absolute_url }}" alt="ConnectHV final user profile page version">
    <figcaption>This is the final version of the ConnectHV user profile page.</figcaption>
</figure>

<figure>
    <img src="{{ '/assets/img/work/connecthv-v4-mobile.png' | absolute_url }}" alt="ConnectHV mobile version design documentation">
    <figcaption>I made sure to document my thinking around how this would collapse on mobile.</figcaption>
</figure>

Building out a design system in Figma helped me stay consistent and iterate quickly.

<figure>
    <img src="{{ '/assets/img/work/connecthv-v4-system.png' | absolute_url }}" alt="ConnectHV design system in Figma for consistency and quick iteration">
    <figcaption>Having a fleshed-out design system in Figma helped me stay consistent and iterate quickly.</figcaption>
</figure>

## Details

A subtle blur effect highlights the main actions on the home page without obscuring the hero video:

<figure>
    <video src="{{ '/assets/img/work/connecthv-blur.mp4' | absolute_url }}" autoplay muted loop playsinline></video>
</figure>

The various sections of the About page are linked via tiles with dynamic hover effects, with each tile color-coded to match the section it leads to:

<figure>
    <video src="{{ '/assets/img/work/connecthv-about.mp4' | absolute_url }}" autoplay muted loop playsinline></video>
</figure>

A demonstration of the transition when the menu is opened:

<figure>
    <video src="{{ '/assets/img/work/connecthv-menu.mp4' | absolute_url }}" autoplay muted loop playsinline></video>
</figure>

It's hard to explain the value of the ConnectHV Slack organization to someone who isn't familiar with Slack, so I rigged up a system to pull in
content from Slack, anonymize it, and display it in a faux Slack interface embedded into the site:

<figure>
    <video src="{{ '/assets/img/work/connecthv-slack.mp4' | absolute_url }}" autoplay muted loop playsinline></video>
</figure>

## Looking ahead

ConnectHV continues to evolve with expansions like local chapters and an upcoming job board. The design will remain agile — new features and visual improvements build off the same design principles that made the platform successful. For me, it reaffirms that great product design is about understanding users, crafting a coherent vision, and delivering polished experiences that solve genuine needs.
