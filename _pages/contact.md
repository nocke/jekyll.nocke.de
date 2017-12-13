---
title: Contact
categories: Frank Nocke, Kontakt, Email, Booking, Inquiries, Website
permalink: /contact/
lang: en
bodyclass: cornerpin-center
---


<section title='Kontakt, Email, Telefon, Anschrift'>

  <ul class='big-links bpad20'>
    <li>
      <a href='#' target='_blank' class='email' title='Frank Nocke Hamburg Email'><span class='sprite sprite-email'></span><span class='label'>{{ site.profile.mail }}</span></a>
    </li>
    <li>
      <a href='{{site.profile.xing}}' target='_blank' title='Frank Nocke Hamburg XING'><span class='sprite sprite-xing'></span>...auf Xing</a>
    </li>
    <li>
      <h2 class='h2 tpad40'>weitere Profile im Netz...</h2>
    </li>
    <li>
      <a href='{{site.profile.stackoverflow}}' target='_blank' title='Frank Nocke Stackoverflow'><span class='sprite sprite-stackoverflow'></span>Stackoverflow</a>
    </li>
    <li>
      <a href='{{site.profile.github}}' target='_blank' title='Frank Nocke Github Twitter'><span class='sprite sprite-github'></span>github.com/nocke</a>
    </li>
  </ul>

</section>

<h5 lang='de' class='center tpad20'>Erste Kontaktaufnahme durch <b>Personalvermittler</b> bitte per Email oder XING, nicht telefonisch.</h5>
<h5 lang='en' class='center'><b>Recruiters:</b> Please contact me first through Email or XING only, not over the phone.</h5>


<script type="text/javascript">
  
  var elems = document.getElementsByTagName('a'), i;
  for (i in elems) {
      console.log( elems[i].className );
      if((' ' + elems[i].className + ' ').indexOf(' email ') > -1) {
          var label = elems[i].getElementsByClassName('label')[0];
          var realthing = label.innerText.trim().replace(/\[.t\]/g,'@')
          label.innerHTML = realthing;
          elems[i].href = 'mailto:' + realthing + '?subject=Anfrage';
      }
  }

</script>

