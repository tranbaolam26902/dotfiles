# Campbell's dotfiles

## After clone:

**Move /zsh/.zshenv file to home directory**

**Install powerlevel10k to `~/.config` folder**

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.config/powerlevel10k
```

**Install tmux catppuccin theme to `~/.config/tmux/plugins/catppuccin` folder**

```bash
mkdir -p ~/.config/tmux/plugins/catppuccin
git clone -b v2.1.3 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux
```
