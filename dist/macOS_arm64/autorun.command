#!/bin/bash
SOURCE_DIR="$(dirname "$0")"
SOURCE_DIR="$(readlink -f $SOURCE_DIR/../../src)"
cd "$SOURCE_DIR"

if [ ! -f ./venv/bin/activate ]; then
    python3 -m venv venv
    source ./venv/bin/activate
    pip install -r ./../requirements.txt
    pip install certifi
fi

source ./venv/bin/activate
python main.py
