# Neovim Dotfiles

Custom config dotfiles for Neovim written by Lua Script.

## Installation

<details>
<summary><b>Direct installation</b></summary>

> Clone the repository to *'.config'* directly.

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

> I highly recommend to clone the repository to *'Document'* with rsync.

```bash
git clone https://github.com/astaos/nvim-dotfiles.git ~/Document/nvim-dotfiles/
```

```bash
rsync -avxHAXP --exclude={'.git*','.script','LICENSE','*.md'} nvim-dotfiles/* ~/.config/
```

> Run *'install.sh'* to install essentials.

``` bash
bash ~/Document/nvim-dotfiles/.scripts/install.sh
```

</details>

Type one of belows.

- Arch
- Ubuntu
- Mac
- Git (set gitcommit templete for optional)

> Restart Neovim twice for Bootstraping Packer.

**NOTE:** If you have some problems with *'nvim-treesitter'*, you should update *'nvim-treesitter'* with

```vim
:TSUpdate
```
