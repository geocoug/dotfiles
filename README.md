# dotfiles

My dotfile configurations for MacOS.

## Usage

```sh
git clone https://github.com/geocoug/dotfiles.git \
&& cd dotfiles \
&& ln -sf $PWD/.bashrc $HOME/.bashrc \
&& ln -sf $PWD/.hushlogin $HOME/.hushlogin \
&& ln -sf $PWD/.gitconfig $HOME/.gitconfig \
&& ln -sf $PWD/.gitignore_global $HOME/.gitignore_global \
&& ln -sf $PWD/.vimrc $HOME/.vimrc \
&& ln -sf $PWD/.zprofile $HOME/.zprofile \
&& ln -sf $PWD/.zshrc $HOME/.zshrc \
&& ln -sf $PWD/.psqlrc $HOME/.psqlrc \
&& ln -sf $PWD/.poshthemes $HOME/.poshthemes \
&& ln -sf $PWD/.psqlrc $HOME/.psqlrc \
&& ln -sf $PWD/vscode/settings.json "$HOME/Library/Application Support/Code/User/settings.json" \
&& ln -sf $PWD/vscode/keybindings.json "$HOME/Library/Application Support/Code/User/keybindings.json" \
&& ln -sf $PWD/bettercmdtab/config.json "$HOME/.config/bettercmdtab/config.json" \
&& ln -sf "$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents" "$HOME/Obsidian" \
&& crontab schedule.cron
```

## Raycast

To import or export Raycast settings: `Raycast > Settings > Advanced > Import / Export`

## Homebrew

See the [docs](https://docs.brew.sh/Brew-Bundle-and-Brewfile) for more info.

Export Homebrew Bundle: `brew bundle dump -f`

Import Homebrew Bundle: `brew bundle check || brew bundle install`
