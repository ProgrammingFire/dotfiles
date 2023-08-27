<br></br>

<div align="center">
 <img height="100px" src="https://github.com/ProgrammingFire/dotfiles/assets/77576329/38546477-aa79-4f42-a7b4-34dddc04f833" />
  
<br></br>
  
  <img src="https://github.com/ProgrammingFire/dotfiles/assets/77576329/87878875-3399-414f-a7e6-b008cb04816e" />

</div>

<br></br>

My personal dotfiles for my config of hyprland, waybar, lunarvim, fish and more..

<br></br>

![swappy-20230817_203825](https://github.com/ProgrammingFire/dotfiles/assets/77576329/b3f9ea74-4b05-4449-a2a2-33cbd2050f18)
![swappy-20230817_203749](https://github.com/ProgrammingFire/dotfiles/assets/77576329/4cdabb7d-8fe7-4096-b12e-fe8e84b690bb)

![swappy-20230814_203647](https://github.com/ProgrammingFire/dotfiles/assets/77576329/1ae5e888-0a6d-4973-99e7-b790c4806564)
![swappy-20230814_201335](https://github.com/ProgrammingFire/dotfiles/assets/77576329/0c36e3bf-8f6c-4404-b4ef-1075747aeae0)
![swappy-20230814_201308](https://github.com/ProgrammingFire/dotfiles/assets/77576329/4518891f-c1af-4de8-b25a-1bb4097e9de0)

# Installation
To install my setup, you will need Arch Linux

Once you have installed Arch Linux, run the script of the original creator of this hyprland setup, [Prasanth Rangan](https://github.com/prasanthrangan/hyprdots)

```bash
sudo pacman -Sy git
git clone https://github.com/prasanthrangan/hyprdots ~/Hyprdots
cd ~/Hyprdots/Scripts
./install.sh
```

After installing the hyprdots configuration. Clone and use my config:
```bash
git clone https://github.com/programmingfire/dotfiles ~/.config
```

Install `lvim`:
```bash
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
```

Install `fish`:
```bash
sudo pacman -Sy fish
```

Set `fish` as your default shell:
```bash
chsh $USER

# Enter your password
# and then type
# /usr/bin/fish
```
