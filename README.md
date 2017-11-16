
## What is this?

Well, the styles and data behind my personal blog page...

## Running

`npm run build` – builds (a single time, no watch, no nothing)

`npm watch` – watches Jekyll content files, however not `_config.yml`

`npm restart` – does the same, but also restarts on `_config.yml` changes. (might cause a 2-3 delay, in particular together with live reloading, below).

Local site is accessible at [`localhost:4000`](http://localhost:4000).

`npm reload` – live reload (pressing ‘refresh’ no more) proxy, outputs to port 4001.

**Most convenient:** use `npm restart` and `npm reload`, access dev site at [`localhost:4001`](http://localhost:4001).

`npm start` does precisely that.


## Acknowledgements

Theme used is derived from the [“Hacker Theme”](https://github.com/pages-themes/hacker) licensed (waived) [under CC-0](https://github.com/pages-themes/hacker/blob/master/LICENSE).

Theme uses [rouge syntax coloring](http://rouge.jneen.net/), based on [original base16 by Chris Kempson](https://github.com/chriskempson/base16) under [MIT License](https://github.com/chriskempson/base16/blob/master/LICENSE.md).

