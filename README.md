# dotfiles

My dotfile configurations.

```bash
git clone https://github.com/geocoug/dotfiles.git && \
ln -sf ./dotfiles/.gitconfig $HOME/.gitconfig && \
ln -sf ./dotfiles/.gitignore_global $HOME/.gitignore_global && \
ln -sf ./dotfiles/.vimrc $HOME/.vimrc && \
ln -sf ./dotfiles/.zprofile $HOME/.zprofile && \
ln -sf ./dotfiles/.zshrc $HOME/.zshrc && \
ln -sf ./dotfiles/vscode/settings.json "$HOME/Library/Application Support/Code/User/settings.json"
ln -sf ./dotfiles/vscode/keybindings.json "$HOME/Library/Application Support/Code/User/keybindings.json"
```

Save a list of installed vscode extensions: `code --list-extensions >> extensions.txt`