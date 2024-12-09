#!/bin/bash

FILE_PATH=$1
PYTHON_VENV_DIR=$2

"$PYTHON_VENV_DIR/python" ~/projects/me/dotfiles/jetbrains/moveimport.py $FILE_PATH > /dev/null

"$PYTHON_VENV_DIR/ruff" format $FILE_PATH > /dev/null
"$PYTHON_VENV_DIR/ruff" check $FILE_PATH --fix