---
layout: post
title: Creating Multiple Chrome-Profiles under Linux
permalink: /blog/2018-04-11-Creating-Multiple-Chrome-Profiles-under-Linux.html
categories: hamburg, frontend, javascript
lang: en
---

If you are anything like me, you want to have multiple browser profiles... for all your work, private, organizing stuff…

 * Keeping private stuff and work separate
   * in terms of logged-in browser-sessions (i.e. private Twitter, work-email,...)
   * in terms of plugins (I do insist on uBlock, ABP, ghostery when browsing privately, but when I work on Ads, naturally I need to disable some…)
   * meaningful URL autocompletion (you don't need vacation details and amazon orders while doing this work thing… and vice versa)
   * in terms of being less trackable across your entire online behaviour. (Think [bulkheads](https://www.google.com/search?tbm=isch&q=ship+bulkheads))
   * and just mentally IMHO. Less in total, more on what you focus.
 * Also to have differnt Bookmark-Toolbars

## So, how do you do that?

(It was a bit easier with Firefox and its `profiles.ini` [in the old days…](http://kb.mozillazine.org/Profiles.ini_file))

### 1. create an (empty) profile-Folder

  Chrome basically insist all profile-folders to be under `~/.config/google-chrome`

  If you hate that as much as I do and want to collect your important profiles (which you may consider important to back up) in a more visible place, let's create them somewhere else and do a symlink:

  ```bash
    cd ~/.config/google-chrome
    mkdir /home/frank/Documents/Organisation/chrome-profiles/chrome-eigentlich
    ln -s /home/frank/Documents/Organisation/chrome-profiles/chrome-eigentlich
  ```

  That gets you a symbolic link, pointing to, where you'd actually want to keep your profiles

  ```bash
  ~/.config/google-chrome $ llinks
    chrome-work    -> /home/frank/Documents/Organisation/chrome-profiles/chrome-work/
    chrome-private -> /home/frank/Documents/Organisation/chrome-profiles/chrome-private/
    chrome-testing -> /home/frank/Documents/Organisation/chrome-profiles/chrome-testing/
    chrome-client1 -> /home/frank/Documents/Organisation/chrome-profiles/chrome-client1/
  ```

  And as you can see, I have quite a few. `llinks` by the way is a useful macro in my .bash_aliases to list links only…

  ```bash
    alias llinks='ll -l | grep "\->"'
  ```

### 2. add a shortcut to `/user/bin`

  Unless you are into lenghty calls with several parameters to open a particular profile, you want to conveniently call it, like so:

  ```bash
    $> chrome-work
  ```
  So let's create a miniature shell script in /usr/bin.
  (You can of course use any other editor than pluma)

  ```bash
    $> cd /usr/bin
    $> sudo pluma chrome-work
  ```

  …and that's, what I am using there:

  ```bash
  #!/usr/bin/env bash
  google-chrome --disable-session-crashed-bubble --profile-directory=chrome-eigentlich
  ```

<!-- #run chrome with specific profile
# (disable crashed session warning might not be working...)
# and you may experiment with  --restore-last-session  -->

Lastly, you might want to create a .desktop File, so that you can easily add this to your top bar, bottom plank or elsewhere in your GUI:

  ```bash
  ~ $> cd /usr/share/applications
  /usr/share/applications $> ll google-*
  -rw-r--r-- 1 root  root  8,2K 2018-03-06 15:17  google-chrome.desktop
  -rw-rw-r-- 1 frank frank  208 2016-11-16 21:25  google-free.desktop
  -rw-rw-r-- 1 frank frank  211 2016-11-16 21:25  google-work.desktop
  frank@x230 /usr/share/applications $ cat google-work.desktop
  ```

  This has proven to work quite well as a .desktop file under Ubuntu 16.04 (not too much, not too little… as both can get you trouble with .desktop-Files…)

  ```bash
  [Desktop Entry]
  Name=Chrome Work
  Exec=/usr/bin/google-chrome --disable-session-crashed-bubble --profile-directory=chrome-work %U
  Terminal=false
  Icon=google-chrome
  Type=Application
  Categories=Network;WebBrowser;
  ```

