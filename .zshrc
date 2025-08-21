export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="jonathan"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
alias ls="ls -ltra --color=auto"
alias cursor="/usr/local/bin/cursor --no-sandbox"

setopt NO_BEEP

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    if ! tmux has-session -t tmux-env 2>/dev/null; then
	tmux new-session -d -s tmux-env -n H0ME -c ~/

	tmux new-window -t tmux-env:1 -n VPN -c ~/home/vpn/openvpn/
	tmux send-keys -t tmux-env:1 'sudo openvpn mesovpn.ovpn' C-m

	tmux new-window -t tmux-env:2 -n .zshrc
	tmux send-keys -t tmux-env:2 'nvim .zshrc' C-m

	tmux new-window -t tmux-env:3 -n .tmux.conf
	tmux send-keys -t tmux-env:3 'nvim .tmux.conf' C-m

	tmux new-window -t tmux-env:4 -n kitty.conf -c ~/.config/kitty
	tmux send-keys -t tmux-env:4 'nvim kitty.conf' C-m

	tmux select-window -t tmux-env:0
    fi

    tmux attach-session -t tmux-env
fi
