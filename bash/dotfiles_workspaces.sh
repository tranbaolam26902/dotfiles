SESSION_NAME="campbells"
WINDOW_NAME="dotfiles"
PROJECT_DIR="$HOME/.config"

if ! tmux has-session -t $SESSION_NAME 2>/dev/null; then
  tmux new-session -d -s $SESSION_NAME -c $PROJECT_DIR
  tmux rename-window -t $SESSION_NAME "$WINDOW_NAME"
  tmux split-window -h -c $PROJECT_DIR
  tmux select-pane -t 1
  tmux send-keys "nvim" C-m
  tmux resize-pane -Z
fi

tmux attach -t $SESSION_NAME
