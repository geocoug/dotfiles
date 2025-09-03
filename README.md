# dotfiles

My dotfile configurations for MacOS.

## Usage

```sh
git clone https://github.com/geocoug/dotfiles.git \
&& cd dotfiles \
&& ln -sf .bashrc $HOME/.bashrc \
&& ln -sf .hushlogin $HOME/.hushlogin \
&& ln -sf .gitconfig $HOME/.gitconfig \
&& ln -sf .gitignore_global $HOME/.gitignore_global \
&& ln -sf .vimrc $HOME/.vimrc \
&& ln -sf .zprofile $HOME/.zprofile \
&& ln -sf .zshrc $HOME/.zshrc \
&& ln -sf .psqlrc $HOME/.psqlrc \
&& ln -sf .p10k.zsh $HOME/.p10k.zsh \
&& ln -sf .poshthemes $HOME/.poshthemes \
&& ln -sf .psqlrc $HOME/.psqlrc \
&& ln -sf ./vscode/settings.json "$HOME/Library/Application Support/Code/User/settings.json" \
&& ln -sf ./vscode/keybindings.json "$HOME/Library/Application Support/Code/User/keybindings.json" \
&& ln -sf "$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents" "$HOME/Obsidian" \
&& crontab schedule.cron
```

## Raycast

To import or export Raycast settings: `Raycast > Settings > Advanced > Import / Export`

## autofs

macOS `autofs` config to mount SMB shares under `/Volumes`.

Update the `auto_smb` file with your SMB share information. For example: `/Volumes/jobs    -fstype=smbfs,nosuid,nodev ://USERNAME:PASSWORD@houston-dc.gsi-pc.local/jobs`

```bash
ln -sf ./autofs/auto_master /etc/auto_master \
&& ln -sf ./autofs/auto_smb /etc/auto_smb
```

## Homebrew

See the [docs](https://docs.brew.sh/Brew-Bundle-and-Brewfile) for more info.

Export Homebrew Bundle: `brew bundle dump -f`

Import Homebrew Bundle: `brew bundle check || brew bundle install`
