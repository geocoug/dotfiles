# dotfiles

My dotfile configurations for MacOS.

## Usage

```sh
git clone https://github.com/geocoug/dotfiles.git \
&& cd dotfiles \
&& ln -sf .bashrc $HOME/.bashrc \
&& ln -sf .gitconfig $HOME/.gitconfig \
&& ln -sf .gitignore_global $HOME/.gitignore_global \
&& ln -sf .vimrc $HOME/.vimrc \
&& ln -sf .zprofile $HOME/.zprofile \
&& ln -sf .zshrc $HOME/.zshrc \
&& ln -sf .p10k.zsh $HOME/.p10k.zsh \
&& ln -sf .poshthemes $HOME/.poshthemes \
&& cp .psqlrc $HOME/.psqlrc \
&& ln -sf ./vscode/settings.json "$HOME/Library/Application Support/Code/User/settings.json" \
&& ln -sf ./vscode/keybindings.json "$HOME/Library/Application Support/Code/User/keybindings.json" \
&& crontab ./cron/schedule.cron
```

## Export Homebrew Packages

```sh
cd ./homebrew && brew bundle dump -f
```
