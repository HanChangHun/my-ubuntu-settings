# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM=xterm-256color

bindkey '^[[1~' beginning-of-line
bindkey '^[[4~' end-of-line
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

export ZSH="/home/chun/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
	fzf
)

source ~/.profile
source $ZSH/oh-my-zsh.sh

alias cat="batcat"
alias vi="nvim"
alias tmux="TERM=xterm-256color tmux"
alias my_vncserver="vncserver --localhost no --geometry 2560x1440"

export PATH=~/.local/bin:$PATH
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON="$(which python3)"
source ~/.local/bin/virtualenvwrapper.sh
