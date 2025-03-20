SESSION_NAME=${1:-"dls"}
WINDOW_NAME=${2:-"default"}
PROJECT_DIR=${3:-"$HOME/Workspaces/dls-projects"}

# Ensure the project directory exists
if [ ! -d "$PROJECT_DIR" ]; then
    echo "⚠️ ERROR: Project directory '$PROJECT_DIR' does not exist!"
    exit 1
fi

# Ensure the session exists
if ! tmux has-session -t $SESSION_NAME 2>/dev/null; then
    tmux new-session -d -s $SESSION_NAME -c "$PROJECT_DIR"
    tmux rename-window -t $SESSION_NAME "$WINDOW_NAME"
fi

# Check if the window exists, create if not
if ! tmux list-windows -t $SESSION_NAME | grep -Fq "$WINDOW_NAME"; then
    tmux new-window -t $SESSION_NAME -n "$WINDOW_NAME" -c "$PROJECT_DIR"
fi

# Ensure splitting only happens if the correct window is active
tmux select-window -t "$SESSION_NAME:$WINDOW_NAME"

# Check if the window is already split
PANE_COUNT=$(tmux list-panes -t "$SESSION_NAME:$WINDOW_NAME" | wc -l)

if [ "$PANE_COUNT" -eq 1 ]; then
    tmux split-window -h -c "$PROJECT_DIR"
    tmux split-window -v -c "$PROJECT_DIR"
    tmux resize-pane -D 5
    tmux resize-pane -R 5

    tmux select-pane -t 3
    tmux send-keys -t 3 "yarn dev" C-m

    tmux select-pane -t 1
    tmux send-keys -t 1 "nvim" C-m
    tmux resize-pane -Z
fi

# Attach to the session
tmux attach -t $SESSION_NAME
