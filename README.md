# Neovim Dotfiles

VSCode style custom dotfiles for Neovim written by Lua Script.

![image](https://user-images.githubusercontent.com/75081360/220223025-698370fc-f0fd-4d70-a3fd-891a33b7f0e8.png)

## Installation

<details>
<summary><b>Direct installation</b></summary>

#### Clone the repository to *'.config'* directly.

```bash
git clone https://github.com/astaos/nvim-dotfiles.git ~/.config
```

> Run *'install.sh'* to install essentials.

```bash
bash ~/.config/.scripts/install.sh
```

</details>

<details>
<summary><b>Install with rsync</b></summary>

#### I highly recommend to clone the repository to *'Document'* with rsync.

```bash
git clone https://github.com/astaos/nvim-dotfiles.git ~/Document/nvim-dotfiles/
```

> Use rsync to sync the dotfiles.

```bash
rsync -avxHAXP --exclude={'.git*','.script','LICENSE','*.md'} nvim-dotfiles/* ~/.config/
```

> Run *'install.sh'* to install essentials.

``` bash
bash ~/Document/nvim-dotfiles/.scripts/install.sh
```

</details>

## *'install.sh'* script

Type one of belows.

- Arch
- Ubuntu
- Mac
- Git (set gitcommit templete for optional)

> Restart Neovim twice for Bootstraping Packer.

## Issues

**NOTE:** If you have some problems with *'nvim-treesitter'*, you should update *'nvim-treesitter'* with

```vim
:TSUpdate
```
