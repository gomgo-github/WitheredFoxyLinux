#!/bin/bash

VENV_PATH="./venv"

if [ ! -d "$VENV_PATH" ]; then
    echo "Creating a venv for PyQt6"
    python3 -m venv "$VENV_PATH"
    echo "venv created"
fi

source "$VENV_PATH/bin/activate"

python3 -c "import PyQt6" 2>/dev/null || pip install PyQt6

SOUND_FILE="./foxy.mp3"

while true; do
    VOLUME=$(amixer get Master | grep -oP '\[\d+%\d*\]' | head -1 | grep -oE '[0-9]+')

    if [ $(( RANDOM % 10000 )) -eq 0 ]; then
        amixer set Master 100% > /dev/null
        
        ffplay -nodisp -autoexit ./foxy.mp3 &
        export VOLUME
        python3 ./foxy.py
        
        amixer set Master "${VOLUME}%" > /dev/null
    fi

    sleep 1

if [ "$1" == "-now" ]; then
    local PREV_VOLUME=$(amixer get Master | grep -oP '\[\d+%\d*\]' | head -1 | grep -oE '[0-9]+')
    
    amixer set Master 100% > /dev/null
    ffplay -nodisp -autoexit ./foxy.mp3 &
    VOLUME=$PREV_VOLUME
    python3 ./foxy.py
    
    amixer set Master "${PREV_VOLUME}%" > /dev/null
    exit 0
fi

done
