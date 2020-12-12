# J0eii Hex Workstation Setup

## System Configs

```
OS: Ubuntu 20.04.1 LTS x86_64
Host: B250-HD3
Kernel: 5.4.0-56-generic
Uptime: 27 mins
Packages: 2083 (dpkg), 7 (snap)
Shell: zsh 5.8
WM: awesome
Theme: Greybird [GTK3]
Icons: elementary-xfce-darker [GTK3]
Terminal: HyperTerm
Terminal Font: Hack
CPU: Intel i7-7700 (8) @ 4.200GHz
GPU: NVIDIA GeForce GTX 1050 Ti (Gigabyte G1 Gaming)
GPU: NVIDIA GeForce GTX 1050    (Gigabyte G1 Gaming)
Memory: 5530MiB / 32076MiB
```

## Perpherials

- Kensington Slimblade
- JBL Pebbles
- HHKB

__Monitors__
  - 24" 1920x1080 x 4
  - 32" 2560x1440 x 2

## Displays Card Config

### Display Map

| 24 | 32 | 24 |
|:-:|:-:|:-:|
| 24 | 32 | 24 |

- NVIDIA GeForce GTX 1050
   - 24"(HDMI)-32"(DVI)-34"(HDMI)
- NVIDIA GeForce GTX 1050 Ti
   - 24"(HDMI)-32"(DVI)-34"(HDMI)

## Features

### Software

- Vim
  - Mouse support
  - system-wide clipboard support
- Tmux
  - mouse & color support
- fcitx
  - Chinese Input in Awesome WM
  - Quick Table (You may install your own preferences)
- Intellj ideavim
  - Arrow key support
  - Shortcut for __;__ to __:__
  - Ruler
  - Systemwide clipboard support
- Zsh
  - add antigen and custom alias
   - add git, command-not-found, docker, auto completions plugin
   - by default it use powerlevel9k theme
  - l = ls -la
  - c = clear
  - pbcopy = copy stdoutput to systemwide clipboard
  - pbpaste = reverse pbcopy
  - ll = ls -laf
  - gaa = git add .
  - gc = git commit

### Hardware

- Kensington Slimblade
  - Fix top left button middle click is not working issue
  - Add a new feature to top left button, you can now perform a 4-way scrolling via clicking top-left btn at the sametime
- JBL Pebbles
  - Add __vol-up.sh__ & __vol-down.sh__ for cli/hot keys config to toggle volume

## Setup

### Global Configs

git clone this repository and copy stuff that only you need in your home directory.

You also need to install [__Hack Nerd Fonts__](https://www.nerdfonts.com/font-downloads) .

### Hardware

#### Nvidia Xinerama Setup

You need to custom config it yourself. Different hardware requires different setup.

```
cat dotfiles/.x11-confs/xorg.conf.xinerama
sudo nvidia-settings # Config
sudo service lightdm restart # Restart display manager
```

#### Kensington Slimblade

```
sudo cp dotfiles/.x11-confs/10-slimblade.conf /usr/share/X11/xorg.conf.d/10-slimblade.conf
reboot
```

#### Volume Control

```
cp -r dotfiles/.sh-scripts ~
chmod +x ~/.sh-scripts/*.sh

# you may now call it directly to control your speaker volume
# or config hotkeys like this
~/.sh-scripts/.vol-up.sh
~/sh-scripts/.vol-down.sh
```

### Software

#### Tmux

```
cp dotfiles/.tmux.conf ~
```

#### Vim

```
sudo apt install vim-gtk3
cp -r dotfiles/.vim ~
cp dotfiles/.vimrc ~
```

#### Intellj ideavim

```
cp dotfiles/.ideavimrc ~
```

#### fcitx

```bash
sudo apt install fcitx fcitx-table-quick-classic
mkdir -p ~/.config/fcitx/skin/nord-dark/
fcitx-configtool # change the theme & hotkeys here

# you also need to copy the .xinitrc if you are using awesomeWM
cp dotfiles/.xinitrc ~
reboot #if needed
```

#### Zsh & antigen

install antigen

```
curl -L git.io/antigen > ~/.oh-my-zsh/antigen.zsh
```

install custom config antigen

```
cp dotfiles/.antigenrc ~
cp dotfiles/.zshrc_extends ~
echo "source .zshrc_extends" >> ~/.zshrc
```

#### xfce Custom Themes

Credits
- [mayu_dark_theme](https://www.xfce-look.org/p/1408765/)
- [mc_os_ctlina_xfce_dark](https://www.xfce-look.org/p/1326265/)
- [qogir](https://www.xfce-look.org/search/projectSearchText/qogir)

```
cp -r dotfiles/.themes ~
```
