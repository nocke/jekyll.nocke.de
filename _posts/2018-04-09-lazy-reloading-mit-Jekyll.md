---
layout: post
title: lazy browser-sync reloading mit Jekyll
permalink: /blog/2018-04-09-lazy-browser-sync-reloading-mit-Jekyll.html
categories: hamburg, frontend,E javascript
lang: de
---

Grundsätzlich [verfügt Jekyll](https://jekyllrb.com/docs/usage/) ja über einen eingebauten Server (`jekyll serve`), und watcher, der nach Änderungen den live reloads im Browser ausführt (`--live-reload`).

Nervig ist, daß im incremental mode (den man ja eigentlich immer an haben möchte…) Änderungen in zwei Bereichen ungenügend erfasst werden:

## 1. Verweisde auf .yaml-Dateien

#### *menu-footer.html*
```liquid{% raw %}
<nav class='menu neverprint'>
    <ul class='plain-inline'>
        {% for item in site.data.menu-footer.entries %}
        <li><a href="{{ item.url }}"
					{% if item.target %}target="{{ item.target }}" {% endif %}
					alt="{{ item.title }}">{{ item.title }}</a></li>
        {% endfor %}
    </ul>
</nav>{% endraw %}
```

Die `_data/menu-footer.yaml` wird manuell gepflegt, Änderungen an ihr triggern leider keinen rebuild.

## 2. Iterationen

Wenn man in einem Blogbeitrag (`_post`-Ordner…) den Titel oder Permalink ändert, wird zwar die Seite selber aktualisiert, nicht aber jene Seite, welche die Blogeinträge listet. Da fehlen dann Artikel, oder der Link zeigt ins Nirwana. Beispiel:

#### *_includes/post_list.html*

{% highlight html%}
{% raw %}
<nav class='post-list'>
  <ul>
    {% for post in site.posts %}
    <li>... more stuff...</li>
  </ul>
</nav>
{% endraw %}
{% endhighlight %}


## Lösung:

So lange es bei Jekyll mi Bordmitteln nicht klappt, liefert `touch` auf die einzubindende Datei hat den gewünschen Effekt, und triggert (auch incremental) den Rebuild, der alle Änderungen aufnimmt:

  `$> touch _pages/blog.md`

  `$> touch _includes/post_list.html`


Weniger nervig als ein voller rebuild, aber auch das will man natürlich nicht ständig manuell machen. An dieser Stelle kommt das npm-modul [watchy](https://github.com/caseywebdev/watchy)] zum Einsatz: Es lauert auf Changes in den ‚slave‘-Dateien (blog posts Ordner bzw. die yaml-Files im _data-Ordner…), um dann den notwendigen touch zu vollführen.

#### *package.json*
```
  "watch-blog" : "watchy -w _posts/**/* -- touch _pages/blog.md",
  "watch-data" : "watchy -w _data/**/* -- touch _includes/*",
  "serve": "bundle exec jekyll serve --watch --incremental --livereload --config _config.yml,_dev.yml",
```

`_includes/*` ist jetzt ein etwas großzügigeres Touch-Ziel, welches alle Dateien anfasst, aber dafür muss man sich auch nicht um jede .yaml-Datei in `_data` einzeln kümmern.


### Zu guter Letzt gilt es noch alle drei Tasks gemeinsam zu starten:

**eher schlecht:**
```
  "start": "npm run watch-blog & npm run watch-data & npm run serve"
```

Das spätere Beenden der beiden ersten ‚detachten‘ Prozesse ist mühsam, wie ich gelernt habe. Ctrl-C und sogar Terminal-Fenster schließen genügt nicht. Da muss meines Wissens schon ein `killall node` her …oder [zeitintensive Wissenschaft](https://stackoverflow.com/a/27809215/444255) rund um pids, will auch keiner…

 Daher verwendet man unkomplizierter das npm Modul [concurrently](https://www.npmjs.com/package/concurrently), um die drei Tasks gemeinsam gestartet und gestoppt zu bekommen:

```
  "start": "concurrently \"npm run watch-blog\" \"npm run watch-data\" \"npm run serve\""
```

  `$> npm run start` und fertig.
