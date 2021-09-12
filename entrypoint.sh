#!/bin/bash

# . = /github/workspace if actions/checkout
set -eux

if [ -f .devcontainer/.latexmkrc ]; then
    cp .devcontainer/.latexmkrc .latexmkrc
fi

if [ ! -f .latexmkrc ]; then
    cp /.latexmkrc .latexmkrc
fi

# make pdf
latexmk -f -pdf $INPUT_LATEX_FILE_NAME
