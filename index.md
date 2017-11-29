---
layout: home
bodyclass: home
---

<div class='multi-col'>
    <div class='col h1 fancy center zbounce1'>Herzlich willkommen</div>
    <div class='col h1 fancy center zdrop1'>Welcome</div>
</div>


![{{site.description | strip_newlines | strip_html | truncatewords:24 | replace: "|", "" }}]({{site.static}}/img/frank-nocke/frank-nocke-portrait-ballon.jpg)

{% capture introDE %}{% include intro_DE.md %}{% endcapture %}
{% capture introEN %}{% include intro_EN.md %}{% endcapture %}

<section class='multi-col bilingual'>
    <a lang='de' href='{% link _pages/werdegang-deutsch.md %}' class='col plain'>
        <h1 class='h2'>Frontend Entwickler | JavaScript, Node JS, React | Web Apps | Konzeption & UI</h1>
        <span markdown='1'>
            {{ introDE | truncatewords: 50 }}
        </span>
    </a>
    <a lang='de' href='{% link _pages/resume-english.md %}' class='col plain'>
        <h2>Frontend Developer | JavaScript Node JS, React | Web Apps | Concepts & UI</h2>
        <span markdown='1'>
            {{ introEN | truncatewords: 50 }}
        </span>
    </a>

</section>

## Skills

| React JS, Redux, Node JS, npm, yarn |
| --- |
| HTML5, CSS3, Less, Scss/Sass, Stylus |
| responsive Design, mobile Devices, legacy Browser |
| Templateentwicklung mit Smarty, Twig, jsp/JSTL… |
| Javascript, jQuery, Ajax, Google Maps API, Twitter API, OpenGraph, Ajax, MVC, Json, XML |
| Photoshop (Experte): Entwürfe, Mockups, CSS Sprites |
| Linux, Apache, MySQL, PHP (Full Stack) |
| git, svn, Perforce |

## Academia &amp; Experience

* Diplom-Informatiker[[FH Furtwangen](https://www.hs-furtwangen.de/studierende/fakultaeten/digitale-medien/medieninformatik-bsc.html)] 1993–1997
* Master of Computer Science [[FH Wedel](http://www.fh-wedel.de/)] 2002–2005
* 4½ years at Adobe Systems, contributing to [XMP](http://www.adobe.com/products/xmp.html)
* 2 years [teaching Computer Science in Singapore](http://www.np.edu.sg/ict/Pages/default.aspx)
* Freelance Web Developer since 2011

<h2 class='h1'>★ Lebenslauf / Resume ★</h2>

<div class='multi-col'>
    <div class='col h1 center zbounce1'>
        <a href='{% link _pages/werdegang-deutsch.md %}' class='button button-cta'>➪ Mehr über mich</a>
    </div>
    <div class='col h1 center zdrop1'>
        <a href='{% link _pages/werdegang-deutsch.md %}' class='button button-cta'>➪ More about me</a>
    </div>
</div>

<h5 class='center tpad20'>Mein Lebenslauf (word/pdf) für Recruiter & Auftraggeber ist verfügbar auf <a href='/kontakt/'>Anfrage</a>.</h5>
