# ash-patches
this is a mirror of some upstream arch packages, with custom patches that help with vm detection/evasion

# download
i have set up a custom repo for these packages. in order to use it, you'll first have to download [this](https://github.com/the-ashh/ash-patches/releases/tag/v1.0). this is the keyring package for the packages in my server. then, you'll have to make an edit to your `pacman.conf`. open up `/etc/pacman.conf` in your most favourite editor, then before the rest of your repos, add this block:
```
[ash-pkgs]
Server = https://mirror.theash.xyz/$repo
```
after you do that and a quick `pacman -Syu`, you should be all good! if you wanna see a listing of the packages that are currently there, go to [https://mirror.theash.xyz/ash-pkgs](https://mirror.theash.xyz/ash-pkgs). 

you can also download said packages directly from that server if you don't want to add my repo into `pacman`.

# WARNING
i am not responsible if you get banned while using this. i also do not condone cheating, especially with the patches that i have put out. if you are cheating while using my patch set, it puts everyone else who uses the patch set at risk of getting banned. so, please, don't cheat. it's not very pogchamp.
