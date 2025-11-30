export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="jonathan"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
alias ls="ls -ltra --color=auto"
alias cursor="/usr/local/bin/cursor --no-sandbox"
export PATH="$HOME/.cargo/bin:$PATH"

setopt NO_BEEP

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    if ! tmux has-session -t tmux-env 2>/dev/null; then

	tmux new-session -d -s tmux-env -n HOME -c ~/dev/

	tmux new-window -t tmux-env:1 -n notes
	tmux send-keys -t tmux-env:1 'nvim' C-m

	tmux select-window -t tmux-env:0
    fi

    tmux attach-session -t tmux-env
fi
