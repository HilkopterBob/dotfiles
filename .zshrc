# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
export DEFAULT_USER=$USER

ZSH_THEME="agnoster"

plugins=( 
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux


# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
#pokemon-colorscripts --no-title -s -r


### From this line is for pywal-colors
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
#cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

#-------------------------------------------------------------------------------------#
#					Aliases					      #
#-------------------------------------------------------------------------------------#
alias vpn-berlin="sudo openvpn --config ~/Downloads/client.ovpn --data-ciphers "AES-256-CBC""
alias ls=lsd
#alias plymouth-thinkpad="sudo plymouth-set-default-theme thinkdar && sudo dracut --force"
alias girok="/home/nick/.local/bin/girok"
#alias forest="mpvpaper '*' Pictures/wallpapers/forest-rain-star-wars-battlefront-moewalls-com.mp4 -o 'no-audio --loop-playlist --speed=0.5'"
# Enables autocompletion of options for bashfuscator
eval "$(/usr/bin/register-python-argcomplete bashfuscator)"
alias bobfusc="/home/nick/.local/bin/bashfuscator" 
alias cowsay="cowsay 'fick dick basti'"
alias reload="source ~/.zshrc"
alias kanban="~/kanban"


# Created by `pipx` on 2024-02-20 06:56:46
export PATH="$PATH:/home/nick/.local/bin"

export PATH="$PATH:/home/nick/Downloads/Keylockertools-linux-x64/"


