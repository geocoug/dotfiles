export GPG_TTY=$(tty)

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  z
  aliases
  gh
  git
  docker
  zsh-syntax-highlighting
  zsh-autosuggestions
  web-search
  copypath
  copyfile
  copybuffer
  macos
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# STANDARD FUNCTION MODIFICATIONS
alias cat='ccat'
alias l='exa -1 -g -h -l --git --group-directories-first --icons --sort=Name --time=modified'
alias la='exa -1 -g -h -l --git --group-directories-first --icons --sort=Name --time=modified -a'
# STANDARD FUNCTION SHORTCUTS
alias tarup='tar czfv'
alias tarls='tar tvf'
# SHORTCUTS
alias c='clear'
alias h='history'
alias r='source $HOME/.zshrc'
alias speed='speedtest-cli --simple'
# HOMEBREW
alias casks='brew cu -a --no-brew-update -v'
alias brewup='brew update; brew upgrade; brew cu -a --no-brew-update; brew cleanup; brew doctor'
# PATHS
alias int='cd "$HOME/iCloud/GitHub/integral"'
alias geo='cd "$HOME/iCloud/GitHub/geocoug"'
alias cloud='cd "$HOME/iCloud"'
# OWNERSHIP
alias my='sudo chown -R `id -u`'
# DOCKER
# alias repo='docker run --rm -it -v $HOME/Library/CloudStorage/OneDrive-Personal/GitHub/github.txt:/app/github.txt create-repo python create_repo.py -f /app/github.txt -r'
# PYTHON
alias lab='docker run -it --rm -p 8888:8888 -v $(PWD):/home/jovyan jupyter-lab'
alias repo='$HOME/venvs/dev/bin/python -m create_github_repo -f $HOME/iCloud/GitHub/github.txt'
alias dev='source $HOME/venvs/dev/bin/activate'
alias pyenv='/opt/homebrew/opt/python@3.10/Frameworks/Python.framework/Versions/Current/bin/python3.10 -m venv .venv && source ./.venv/bin/activate && python -m pip install --no-cache-dir pre_commit flake8 black isort autoflake bandit mypy > /dev/null 2>&1 && python -m pip freeze > requirements.txt > /dev/null 2>&1 && code .'
# DOTFILE CONFIG
alias config='git --git-dir=/Users/cgrant/iCloud/GitHub/geocoug/dotfiles/.git --work-tree=/Users/cgrant/iCloud/GitHub/geocoug/dotfiles'

export PATH="$HOME/bin:$PATH"

source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $HOME/.p10k.zsh ]] || source $HOME/.p10k.zsh
