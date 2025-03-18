#!/bin/bash

# Check for existing tmux sessions
sessions=$(tmux list-sessions -F "#{session_name}" 2>/dev/null)

# If there are no sessions prompt to create one cause otherwise it is annoying...........
if [ -z "$sessions" ]; then
    read -p "No existing sessions. Enter a name for a new tmux session: " session_name
    tmux new-session -s "$session_name"
else
    echo "Available tmux sessions:"
    echo "$sessions"
    read -p "Enter the name of an existing session to attach, or a new name to create one: " session_name

    #Check if session exists - if true attach if false create one
    if echo "$sessions" | grep -q "^$session_name$"; then
        tmux attach-session -t "$session_name"
    else
        tmux new-session -s "$session_name"
    fi
fi
