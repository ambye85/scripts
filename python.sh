#!/usr/bin/env sh

brew install pyenv
env PYTHON_CONFIGURE_OPTS="--enable-framework" pyenv install 3.8.0

