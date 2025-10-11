# BREW
eval "$(brew shellenv)"

# OH-MY-ZSH
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOMEBREW_PREFIX/share/powerlevel10k/powerlevel10k.zsh-theme

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git nvm)
zstyle ':omz:plugins:nvm' lazy yes
zstyle ':omz:completion' use-cache yes
zstyle ':omz:update' mode auto
source $ZSH/oh-my-zsh.sh
setopt rmstarsilent

# ENV VARIABLES
export EDITOR=nvim
export VISUAL=nvim

# ALIASES
alias run='npm run dev'
alias trashx='rm -rf ~/.Trash/{*,.*}(N)'
alias n='nvim'
alias n.='nvim .'
alias ts='tree -L1 --du -ha --dirsfirst'
alias ls='gls --color -hals --group-directories-first'

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# EXTERNAL
source $HOME/.config/.rc
