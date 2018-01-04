
## What is this?

Well, the styles and data behind [my personal blog page](https://www.nocke.de)...

## Running

`npm run build` – builds (a single time, no watch, no nothing)

`npm watch` – watches Jekyll content files, however not `_config.yml`

`npm restart` – does the same, but also restarts on `_config.yml` changes. 

Local site is accessible at [`localhost:4000`](http://localhost:4000).

`npm reload` – live reload (pressing ‘refresh’ no more) proxy, outputs to port 4001. Works for boths content and styling changes.

**Most convenient:** use `npm restart` and `npm reload`, access dev site at [`localhost:4001`](http://localhost:4001).

`npm start` does precisely that.

### caveats
→ `_config.yml` changes can cause a 2-3s delay, in particular together with live reloading, but will eventually load.
→ adding files might mean to stop and restart the live reload task, so those file get on the watchlist
→ `incremental` support for Jekyll is still experimental. Consider `npm run rebuild` to ensure complete iteration (i.e. of change menu.yml's, etc…)



## Acknowledgements

Theme used is derived from the [“Hacker Theme”](https://github.com/pages-themes/hacker) licensed (waived) [under CC-0](https://github.com/pages-themes/hacker/blob/master/LICENSE).

Theme uses [rouge syntax coloring](http://rouge.jneen.net/), based on [original base16 by Chris Kempson](https://github.com/chriskempson/base16) under [MIT License](https://github.com/chriskempson/base16/blob/master/LICENSE.md).

