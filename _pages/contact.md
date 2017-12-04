---
title: Kontakt
categories: Frank Nocke, Kontakt, Email, Booking, Inquiries, Website
permalink: /kontakt/
lang: en
---


<section title='Kontakt, Email, Telefon, Anschrift'>

  <section class='multi-col tpad20'>
  <h2 class='col'>
  <a class='email' data-href='{{site.profile.xing}}' target='_blank'>
    <span class='sprite sprite-xing'></span><span class='label'>{{ site.profile.mail }}</span>
  </a>
  </h2>
  <h2 class='col'>
  <a href='{{site.profile.xing}}' target='_blank'>
    <span class='sprite sprite-xing'></span> auf Xing...
  </a>
  </h2>
  </section>

  <h2 class='h1 tpad60'>Weitere Profile im Netz...</h2>

  <section class='multi-col'>
  <h2 class='col'>
  <a href='{{site.profile.stackoverflow}}' target='_blank'>
    <span class='sprite sprite-stackoverflow'></span> Stackoverflow
  </a>
  </h2>
  <h2 class='col'>
  <a href='{{site.profile.github}}' target='_blank'>
    <span class='sprite sprite-github'></span> Github
  </a>
  </h2>
  </section>

</section>

  <script type="text/javascript">

    var elems = document.getElementsByTagName('a'), i;
    for (i in elems) {
        if((' ' + elems[i].className + ' ').indexOf(' email ') > -1) {
            var label = elems[i].getElementsByClassName('label')[0];
            var realthing = label.innerText.trim().replace(/\[.t\]/g,'@')
            label.innerHTML = realthing;
            elems[i].href = 'mailto:' + realthing + '?subject=Anfrage';
        }
    }

  </script>

