export GPG_TTY=$(tty)

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $HOME/.p10k.zsh ]] || source $HOME/.p10k.zsh
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

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
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

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
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ALIASES
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
# Overwrite standard functions
alias cat='ccat'
alias l='eza -1 -g -h -l --git --group-directories-first --icons=auto --sort=Name --time=modified -o --time-style=long-iso'
alias la='eza -1 -g -h -l --git --group-directories-first --icons=auto --sort=Name --time=modified -o --time-style=long-iso -a'
alias grep='grep --color=auto'
# Tarball shortcuts
alias tarup='tar czfv'
alias tarls='tar tvf'
# Shortcuts
alias c='clear'
alias h='history'
alias r='source $HOME/.zshrc'
alias speed='speedtest -v'
# Homebrew
alias casks='brew cu -a --no-brew-update -v'
alias brewup='brew update; brew upgrade; brew cu -y -a --no-brew-update --cleanup; brew cleanup; brew doctor'
alias brewun='brew uninstall --zap'
# Paths
alias int='cd "$HOME/GitHub/integral"'
alias gsi='cd "$HOME/GitHub/gsi"'
alias geo='cd "$HOME/GitHub/geocoug"'
alias cloud='cd "$HOME/iCloud"'
# Ownership
alias my='sudo chown -R `id -u`'
# Docker
alias dkcu='docker compose up --build'
alias dkcd='docker compose down --rmi local'
alias dkr='docker run --rm -it'
alias dke='docker exec -it'
# Python
#  Open jupyter lab in the current working direcotry
alias lab='docker run -it --rm -p 8888:8888 -v $(PWD):/home/jovyan jupyter-lab'
#  Activate default dev environment
alias dev='source $HOME/venvs/dev/bin/activate'
#  Activate the Python venv in the current working directory. Assumes venv is called ".venv"
alias venv='source ./.venv/bin/activate'
# DOTFILE CONFIG
alias config='git --git-dir=$HOME/GitHub/geocoug/dotfiles/.git --work-tree=$HOME/GitHub/geocoug/dotfiles'
# Show biggest files in this directory
alias dusize='du -hs ** | sort -hr | head -10'
# Git
alias gs='git status'
# Get machine IP
alias ip='ipconfig getifaddr en0'

alias python='python3'
alias obsidian='cd "/Users/cgrant/Library/Mobile Documents/iCloud~md~obsidian/Documents"'

# Data management
alias dm='cd /Volumes/jobs/data-management'

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# CUSTOM FUNCTIONS
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function timezsh() {
    # Time the startup of the shell.
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

function chpwd() {
    # Automatically load environment variables specific to a directory tree
    if [ -r $PWD/.env ]; 
    then
        source $PWD/.env
    fi
}

function timestamp() {
    # Print the current timestamp.
    TIMESTAMP=`date +'%Y-%m-%d %H:%M:%S'`  # (%Z)
    printf "$TIMESTAMP"
}

function sleepin() {
    # Turn off the display and sleep in X seconds.
    # Usage: sleepin <seconds>

    # Catch CTRL-C and exit gracefully - don't exit the shell
    # This allows the user to cancel the sleep command
    # and return to the shell without putting the display to sleep.
    trap 'echo "Sleep command cancelled"; exit 0' INT

    # Check if an argument is provided
    if [ -z "$1" ]; then
        echo "Usage: sleepin <seconds>"
        return 1
    fi
    # Check if the argument is a valid number
    if [ "$1" -lt 1 ]; then
        echo "Error: seconds must be greater than 0"
        return 1
    fi
    echo "Putting display to sleep in $1 seconds..."
    # Every 60 seconds, write a message with the number of seconds left
    for ((i=$1; i>0; i--)); do
        if (( i % 60 == 0 )); then
            echo "Display will sleep in $i seconds..."
        fi
        sleep 1
    done
    # Use pmset to put the display to sleep
    sleep $1 && pmset displaysleepnow
}



# Custom PATH
export PATH="$HOME/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
export PATH="/Volumes/jobs/data-management/bin:$PATH"
export PATH="$(brew --prefix)/opt/python@3.12/libexec/bin:$PATH"

# Resource limit
ulimit -n 16384

# if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
#     # eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/amro.omp.json)"
#     eval "$(oh-my-posh init zsh --config $HOME/.poshthemes/custom2.omp.json)"
# fi

# eval "$(gh copilot alias -- zsh)"

alias gsi-app='ssh -i "~/.ssh/cgrant.pem" cgrant@44.244.117.190'
fpath+=~/.zfunc; autoload -Uz compinit; compinit
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/cgrant/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
