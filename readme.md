# Neovim – my config files

## Installation

1. Install Packer

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
2. Clone repository

```bash
git clone --depth 1 https://github.com/pixolin/neovim.git\
~/.config/nvim
```

3. Run Packer headless

```shell
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```
