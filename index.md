---
layout: home
bodyclass: home
title: Hamburg Javascript Freelancer, Zürich, Bern
---

<div class='box box-pit center h2 bpad10'>
    <a href='/contact/' class='plain'>Aktuelle Verfügbarkeit: August 2018</a>
    <ul class='h3'>
        <li>
            Ich suche primär Freelance-Projekte in &amp; um Hamburg oder mit hohem Remote-Anteil (nach Einarbeitung…).
        </li>
        <li>
            Recruiter-Anfragen bitte-bitte <a href='/contact'>per Email oder XING</a>, nicht per Telefon…
        </li>
    </ul>
</div>


<div class='center h1 shadow-massive-text'>
    <span class='zbounce1'>Grüeziwohl</span>
    <span class='zdrop1'> &amp;&nbsp;Moin–Moin!</span>
</div>

{% capture imgMeta %}{{site.description | strip_newlines | strip_html | truncatewords:24 | replace: "|", "" }}{% endcapture %}
{% capture introDE %}{% include intro_DE.md %}{% endcapture %}
{% capture introEN %}{% include intro_EN.md %}{% endcapture %}

{% include tags/picture.html
  class="picture-wide"
  title=imgMeta
  src="/img/frank-nocke/frank-nocke-portrait-ballon.jpg"
%}

<section class='col-2-m bilingual'>
    <a lang='de' href='{% link _pages/work_DE.md %}' class='col plain'>
        <h1 class='h2'>Frontend Entwickler | JavaScript, Node JS, React | Web Apps | Konzeption & UI</h1>
        <span markdown='1'>
            {{ introDE | truncatewords: 45 }}
            **[ →&thinsp;weiter... ]**
        </span>
    </a>
    <a lang='de' href='{% link _pages/work_EN.md %}' class='col plain'>
        <h2>Frontend Developer | JavaScript Node JS, React | Web Apps | Concepts & UI</h2>
        <span markdown='1'>
            {{ introEN | truncatewords: 50 }}
            **[ →&thinsp;more... ]**
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

## Studies &amp; Experience

* Diplom-Informatiker [FH Furtwangen](https://www.hs-furtwangen.de/studierende/fakultaeten/digitale-medien/medieninformatik-bsc.html){:target="_blank"} 1993&thinsp;–&thinsp;1997
* Master of Computer Science [FH Wedel](http://www.fh-wedel.de/){:target="_blank"} 2002–2005
* 4½ years at Adobe Systems, contributing to [XMP](http://www.adobe.com/products/xmp.html){:target="_blank"}
* 2 years [teaching Computer Science in Singapore](http://www.np.edu.sg/ict/Pages/default.aspx){:target="_blank"}
* Freelance Web Developer since 2011

<div class='col-2-m'>
    <div class='col h1 center zbounce1'>
        <a href='{% link _pages/work_DE.md %}' class='button button-cta'>➪ Mehr über mich</a>
    </div>
    <div class='col h1 center zdrop1'>
        <a href='{% link _pages/work_EN.md %}' class='button button-cta'>➪ More about me</a>
    </div>
</div>

<h4 class='center tpad20'>Mein Lebenslauf als pdf für Recruiter & Auftraggeber verfügbar auf <a href='/contact/'>Anfrage</a>.</h4>
<h4 class='center tpad10'>My resumé/CV (pdf) is available to Recruiters & Employers <a href='/contact/'>upon request</a>.</h4>
