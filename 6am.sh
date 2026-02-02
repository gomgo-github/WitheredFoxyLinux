#!/bin/bash

echo "Killing foxy.sh loop process"

pkill -f "foxy.sh"
pkill -f "foxy.py"
pkill -f "ffplay"

ffplay -nodisp -autoexit -loglevel quiet ./kill.mp3

echo "Process killed."
