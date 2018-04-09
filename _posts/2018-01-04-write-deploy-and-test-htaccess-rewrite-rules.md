---
title: einfaches Testen von .htaccess Rewrite-Regeln
categories: hamburg, frontend, javascript, htaccess, testing
lang: de
layout: post
---

 htaccess-Regeln


### Fiddling with .htaccess Rewrite-rules for the apache server can be a constant pain. With some simple practice and a bit of bash scripting, you can write, deploy and most importantly test your rewrite rules in a breeze.


### 1. Do not test in the browser. Use `wget`.

I assume, that some 301-redirect are part of what you need in your rewrite rules.
Chrome and Firefox have the nasty habbit (from a developers angle), that they cache 301 redirects. That means:

* You are calling `yoursite.com/old-product?whatever` to see if it gets redirected correctly
* And: No, it doesn't, your rewrite goes elsewhere than intended. So you fix your .htaccess and try again.

Result: The very same, the redirect itself got cached. Only changes on the page you end up on are shown. Unless you clear your browser cache. Ths is a nuisance.


[TODO]
