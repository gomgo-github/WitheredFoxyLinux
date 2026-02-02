#!/bin/bash

echo "Killing foxy.sh loop process"

pkill -f "foxy.sh"
pkill -f "foxy.py"
pkill -f "ffplay"

echo "Process killed."
