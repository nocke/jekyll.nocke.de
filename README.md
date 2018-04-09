
## What is this?

Well, the styles and data behind [my personal blog page](https://www.nocke.de)...

## Running

`npm run clean` – as you'd expect
`npm run build` – builds (a single time, no watch, no nothing)
`npm run rebuild` – clean & build

`npm run watch` – watches Jekyll content files, however not `_config.yml`. → localhost:4000
`npm start` – alias to that

`npm superwatch` – deluxe version, watching for _config.yml changes (task: `restart`) and restarts browser-sync (`reload`) as needed. → localhost: 4001

`npm run deploy` – uploads to server according to credentials (securely placed outside), using lftp


### caveats

- `_config.yml` changes can cause a 2-3s delay, in particular together with live reloading, but will eventually load.
- changes to `.yaml` menu files, added/removed files (in particular the automatic listing of blog entries) might not be picked up by incremental watch

   → `npm run build` helps. (`rebuild` is overdone.) That\`s why `create-post.sh` contains it

	 → dedicated touches of the .yaml/iteration-bearing .htlm-File also help. And avoid manual refresh needs.

	 - `touch _pages/blog.md` →  updates bloglist (iteration)
	 - `touch _includes/header.html` →  updates bloglist (menu-header.yaml)


## Acknowledgements

Theme used is derived from the [“Hacker Theme”](https://github.com/pages-themes/hacker) licensed (waived) [under CC-0](https://github.com/pages-themes/hacker/blob/master/LICENSE).

Theme uses [rouge syntax coloring](http://rouge.jneen.net/), based on [original base16 by Chris Kempson](https://github.com/chriskempson/base16) under [MIT License](https://github.com/chriskempson/base16/blob/master/LICENSE.md).

