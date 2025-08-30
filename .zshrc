alias run='npm run dev'
alias trashx='rm -rf ~/.Trash/{*,.*}(N)'
alias n='nvim'
alias yon='yabai --start-service'
alias yoff='yabai --stop-service'
#SAVEHIST=0
HISTSIZE=10
setopt rmstarsilent
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}
export EDITOR=nvim
export VISUAL=nvim
source ~/.config/zsh/inline_selection.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


