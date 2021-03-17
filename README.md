# Violet i3 Ricing Dots (ViRD) 
---

![Screenshot](https://github.com/vol0s/i3-violet-rice/blob/main/desktop.png)

Dotfiles for my i3 arch linux configuration, violet falvour. :rice_ball:

## Software

The software needed for this build, can be installed by running the `acs` script (https://github.com/vol0s/ais) once you have your fresh arch linux installation.
In case you want to know what software makes a wayland build functional, here is the software used.

- i3-gaps (WM) -> [https://github.com/Airblader/i3](https://github.com/Airblader/i3)
- picom (Compositor) -> [https://github.com/yshui/picom](https://github.com/yshui/picom)
- polybar (Bar) -> [https://github.com/polybar/polybar](https://github.com/polybar/polybar)
- rofi (Launcher) -> [https://github.com/davatorium/rofi](https://github.com/davatorium/rofi)
- dunst (Notification Daemon) -> [https://github.com/dunst-project/dunst](https://github.com/dunst-project/dunst)
- mpd (Audio Daemon) -> [https://github.com/MusicPlayerDaemon/MPD](https://github.com/MusicPlayerDaemon/MPD)
- mpv (Video Player) -> [https://github.com/mpv-player/mpv](https://github.com/mpv-player/mpv)
- feh (Image Viewer) -> [https://github.com/derf/feh](https://github.com/derf/feh)
- scrot (Screenshot) -> [https://github.com/resurrecting-open-source-projects/scrot](https://github.com/resurrecting-open-source-projects/scrot)
- xautolock (idle daemon) -> [https://github.com/l0b0/xautolock](https://github.com/l0b0/xautolock)
- i3-lock-fancy (Lock) -> [https://github.com/meskarune/i3lock-fancy](https://github.com/meskarune/i3lock-fancy)
- kitty (Terminal) -> [https://github.com/kovidgoyal/kitty](https://github.com/kovidgoyal/kitty)
- zsh (Shell) -> [https://github.com/ohmyzsh/ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
- qutebrowser (Browser) -> [https://github.com/qutebrowser/qutebrowser](https://github.com/qutebrowser/qutebrowser)

## Installation

The right approach for getting this rice build, is by selecting it during the execution of the `acs` script inside the `ais` repository. This script will ask us for the rice we want for our freshly installed arch linux. Once we selected Sway Violet Rice, it will install all the mentioned dependencies and configure them by executing the `vird.sh` script located in this folder. Notice that only executing `vird.sh` wont work properly.