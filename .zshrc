# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/lienching/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="clean"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras dnf web-search python pip perl history)

source $ZSH/oh-my-zsh.sh

# User configuration

export LANG=en_US.UTF-8

# export MANPATH="/usr/local/man:$MANPATH"
# Glade
export GLADE_HOME=/home/lienching/glade
export PATH=$GLADE_HOME/bin:$PATH
export GLADE_DRC_WORK_DIR=$GLADE_HOME/tmp
export LD_LIBRARY_PATH=$GLADE_HOME/lib

# Android
export ANDROID_HOME=/home/lienching/Android/Sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH

# CUDA
export PATH=/usr/local/cuda-10.1/bin:$PATH

# Custom Binary
export PATH=/home/lienching/.local/bin:$PATH
export PATH=/home/lienching/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH

# CUPTI ( shipped with CUDA Toolkit )
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64

# Snap
if [ -x "$(command -v snap)" ]; then
  export PATH=/snap/bin:$PATH
fi

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

# Powerline
. /usr/share/powerline/bindings/zsh/powerline.zsh
# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# if session is wayland, route root xsession to current user's xsession
if [ $XDG_SESSION_TYPE = "wayland" ]; then
    xhost +si:localuser:root
fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias update-grub2="sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg"
alias vi=vim
alias battery_stat="cat /sys/class/power_supply/BAT0/status"
alias python=python3
alias cursor-restart="setterm -cursor off && setterm -cursor on"
alias lbTokg="python ~/My-Linux-Script/python_script/unit_convert.py lbTokg"
alias kgTolb="python ~/My-Linux-Script/python_script/unit_convert.py kgTolb"
alias cat=bat
