---
permalink: parcours/
bodyclass: NOPE-hide-header
---

> Before hammering out individual pages, one should ensure, his common styles work well. Even in the midst (or maintenance) of a project, with the pages partly or fully standing, it's great to have a singular, common test page, showcasing every stylistic element there is, including critical edge cases...
>
> To see how things behave, and if they are consistent to each other. **So this is,
what you are looking at…**



# **head**line _One_ is [here](#) – Qua de causa Helvetii quoque reliquos Gallos virtute praecedunt.
## **head**line _Two_ is [here](#)– Qua de causa Helvetii quoque reliquos Gallos virtute praecedunt.
### **head**line _Three_ is [here](#)– Qua de causa Helvetii quoque reliquos Gallos virtute praecedunt.

Helvetii quoque reliquos Gallos virtute praecedunt, quod fere cotidianis proeliis cum Germanis contendunt, cum aut suis finibus eos prohibent aut ipsi in eorum finibus bellum gerunt.

#### **head**line _Four_ is [here](#)– Qua de causa Helvetii quoque reliquos Gallos virtute praecedunt.
##### **head**line _Five_ is [here](#)– Qua de causa Helvetii quoque reliquos Gallos virtute praecedunt.

<hr>


{: .bpad40}

→ If you are interesed in styles &amp; macros, they are [all here](https://github.com/nocke/jekyll.nocke.de/tree/master/_sass){:target="_blank"}

<div id='grays' markdown='1'>

| -----: | -----: | -----: | -----: | -----: | -----: |
| gray1  | gray2  | gray3  | gray4  | gray5  | white  |

</div>


<div id='breakpoints' markdown='1'>

| 480px  | 624px  | 768px  | 864px  | 960px  | 1080px | 1200px | above  |
| -----: | -----: | -----: | -----: | -----: | -----: | -----: | -----: |
| s      | s-m    | m      | m-l    | l      | l-xl   | xl     |        |

</div>


> Quote styles – Single Line

Yes

> Qua de causa Helvetii quoque reliquos Gallos virtute praecedunt, quod fere cotidianis proeliis cum Germanis contendunt,



## Column testing:

### col-2-sm

<div class='col-2-m'>
    <div class='col'>
        Qua de causa Helvetii quoque reliquos Gallos virtute praecedunt, quod fere cotidianis proeliis cum Germanis contendunt, cum aut suis finibus eos prohibent aut ipsi in eorum finibus bellum gerunt. Eorum una, pars, quam Gallos obtinere dictum est, initium capit a flumine Rhodano, continetur Garumna flumine.
    </div>
    <div class='col'>
        Cum aut suis finibus eos prohibent aut ipsi in eorum finibus bellum gerunt. Eorum una, pars, quam Gallos obtinere dictum est, initium capit a flumine Rhodano, continetur Garumna flumine.
    </div>
</div>


Qua de causa `Helvetii` quoque reliquos `Gallos` virtute praecedunt, quod fere cotidianis proeliis cum Germanis contendunt, cum aut suis finibus eos prohibent aut ipsi in eorum finibus bellum gerunt. Eorum una, pars, quam Gallos obtinere dictum est, initium capit a flumine Rhodano, continetur Garumna flumine.

(old-fashioned, deprecated way. Use →
    `\{\% include tags/picture.html…`
)
![image-title-here]({{site.static}}/img/bg_amden.jpg 'Ein Blick aus Amden'){:class="img-responsive"}

```javascript
{% raw %}
    {% include post-list.html %}
    const demo = { a:42, b:true};
    let double = (a) => { return 2*a; }
{% endraw %}
```

{% highlight javascript%}{% raw %}
    working bad bad indend, reduced highlighting
    {% include post-list.html %}
    const demo = { a:42, b:true};
    let double = (a) => { return 2*a; }
{% endraw %}{% endhighlight %}

```html
    (trouble, if jekyll curly tags)
    <header id="x" class='foo' data-x='bar'>
        header 123 ${template}
    </header>
```



* Gallia est omnis divisa in partes tres, quarum unam incolunt Belgae, aliam Aquitani, tertiam qui ipsorum lingua Celtae, nostra Galli appellantur.
  * Hi omnes lingua, insti  tutis,
  * legibus inter se differunt.
* Gallos ab Aquitanis Garumna flumen, a Belgis Matrona et Sequana dividit.

> Man sollte das Fell des Bären nicht verkaufen,
> bevor man ihn erlegt hat.

## icons

Keyboard <span class='icon-keyboard'>
Github <span class='icon-github'>
Xing <span class='icon-xing2'>
Stackoverflow <span class='icon-stackoverflow'>
Close <span class='icon-cross'>
Earth <span class='icon-earth'>
Heart <span class='icon-heart'>


----

## buttons
### helperline

<button id='button'>plain Button</button>
<a class='button' href='#'>plain Anchor</a>
<a class='button'>linkless Anchor</a>
<input class='button' type='submit' value='Input Button' />

<button class='button-main'>main Button</button>
<a class='button button-main' href='#'>plain Anchor</a>
<a class='button button-main'>linkless Anchor</a>
<input class='button button-main' type='submit' value='Input Button' />

<button class='button-cta'>CTA Button</button>
<a class='button button-cta' href='#'>plain Anchor</a>
<a class='button button-cta'>linkless Anchor</a>
<input class='button button-cta' type='submit' value='Input Button' />

----
## anchors

...und jetzt mal den Spieß umdrehen...

Everybody being an anchor...

<button class='anchor'>plain Button</button>
some
<a href='#'>plain Anchor</a>
text
<a>linkless Anchor</a>
be
<input class='anchor' type='submit' value='Input Button' />
here
<span class='anchor'> just a span</span>


----

[I'm an inline-style link with title](https://www.google.com "Google's Homepage")

[I'm a relative reference to a repository file]({{site.static}}/img/alunan.jpg)

[You can use numbers for reference-style link definitions][1]

For <b>some</b> <i>inline html</i><br> look here.

| Just          | A             | Table |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | €100  |
| col 2 is      | centered      | ¥100  |
| zebra stripes | are neat      | $100  |

Qua de _causa Helvetii_ quoque _reliquos Gallos_ **virtute praecedunt**, <www.google.com> quod fere cotidianis `proeliis cum Germanis contendunt`, cum aut suis finibus eos prohibent aut ipsi in eorum finibus bellum gerunt.


[1]: https://en.wikipedia.org/wiki/Note_(typography)
