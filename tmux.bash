#!/bin/bash

SESSION="digi-leap"
DIGI="$HOME/work/digi-leap"
MISC="$HOME/work/misc"
TRAIT="$HOME/work/traiter"

tmux new -s $SESSION -d
tmux rename-window -t $SESSION digi
tmux send-keys -t $SESSION "cd $DIGI/digi-leap" C-m
tmux send-keys -t $SESSION "vrun .venv" C-m
tmux send-keys -t $SESSION "git status" C-m

tmux new-window -t $SESSION
tmux rename-window -t $SESSION util
tmux send-keys -t $SESSION "cd $MISC/common_utils" C-m
tmux send-keys -t $SESSION "vrun .venv" C-m
tmux send-keys -t $SESSION "git status" C-m

tmux new-window -t $SESSION
tmux rename-window -t $SESSION finder
tmux send-keys -t $SESSION "cd $DIGI/label_finder" C-m
tmux send-keys -t $SESSION "vrun .venv" C-m
tmux send-keys -t $SESSION "git status" C-m

tmux new-window -t $SESSION
tmux rename-window -t $SESSION ocr
tmux send-keys -t $SESSION "cd $DIGI/ocr_ensemble" C-m
tmux send-keys -t $SESSION "vrun .venv" C-m
tmux send-keys -t $SESSION "git status" C-m

tmux new-window -t $SESSION
tmux rename-window -t $SESSION pdf
tmux send-keys -t $SESSION "cd $MISC/pdf_parsers" C-m
tmux send-keys -t $SESSION "vrun .venv" C-m
tmux send-keys -t $SESSION "git status" C-m

tmux new-window -t $SESSION
tmux rename-window -t $SESSION traiter
tmux send-keys -t $SESSION "cd $TRAIT/traiter" C-m
tmux send-keys -t $SESSION "vrun .venv" C-m
tmux send-keys -t $SESSION "git status" C-m

tmux new-window -t $SESSION
tmux rename-window -t $SESSION flora
tmux send-keys -t $SESSION "cd $TRAIT/FloraTraiter" C-m
tmux send-keys -t $SESSION "vrun .venv" C-m
tmux send-keys -t $SESSION "git status" C-m

tmux new-window -t $SESSION
tmux rename-window -t $SESSION label
tmux send-keys -t $SESSION "cd $TRAIT/LabelTraiter" C-m
tmux send-keys -t $SESSION "vrun .venv" C-m
tmux send-keys -t $SESSION "git status" C-m

tmux new-window -t $SESSION
tmux rename-window -t $SESSION llm
tmux send-keys -t $SESSION "cd $TRAIT/llm" C-m
tmux send-keys -t $SESSION "vrun .venv" C-m
tmux send-keys -t $SESSION "git status" C-m

tmux new-window -t $SESSION
tmux rename-window -t $SESSION reconcile
tmux send-keys -t $SESSION "cd $DIGI/reconcile_traits" C-m
tmux send-keys -t $SESSION "vrun .venv" C-m
tmux send-keys -t $SESSION "git status" C-m

tmux new-window -t $SESSION

tmux select-window -t digi:1
tmux attach -t $SESSION
