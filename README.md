# Neovim Dotfiles

VSCode style custom dotfiles for Neovim written by Lua Script.

![image](https://user-images.githubusercontent.com/75081360/220223025-698370fc-f0fd-4d70-a3fd-891a33b7f0e8.png)

## Installation

> I highly recommend to use ***'rsync'*** for installation.

<details>
<summary><b>Install with rsync</b></summary>

#### Clone the repository to *'~/Documents'* and install with rsync.

```bash
git clone https://github.com/astaos/nvim-dotfiles.git ~/Documents/nvim-dotfiles/
```

> Use rsync to sync the dotfiles.

```bash
rsync -avxHAXP --include={'gitconfig','.gitconfig'} --exclude={'.*','tools','LICENSE','*.md'} ~/Documents/nvim-dotfiles/* ~/.config/```

> Run *'install.sh'* to install essentials.

``` bash
bash ~/Documents/nvim-dotfiles/tools/install.sh
```

</details>

<details>
<summary><b>Direct installation</b></summary>

#### Clone the repository to *'~/.config'* directly.

```bash
git clone https://github.com/astaos/nvim-dotfiles.git ~/.config
```

> Run *'install.sh'* to install essentials.

```bash
bash ~/.config/tools/install.sh
```

</details>

## *'install.sh'* script

Type one of belows.

- Arch
- Ubuntu
- Mac
- Git (set gitcommit templete for optional)
- Font (*'JetBrainsMono NerdFont'* fonts installation)

> Restart Neovim ***twice*** for Bootstraping Packer.

## Issues

**NOTE:** If you have some problems with *'nvim-treesitter'*, you should update *'nvim-treesitter'* with

```vim
:TSUpdate
```
