#!/bin/bash

# exit on error - -xv for debugging
set -e

THIS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd )"

function install {
    #echo "install task not implemented"
    python -m pip install --upgrade pip
    python -m pip install --editable "$THIS_DIR/"
}

function lint {
    #echo "lint task not implemented"
    pre-commit run --all-files
}

function build {
    #echo "build task not implemented"
    python -m build --sdist --wheel "$THIS_DIR/"
}

function load-dotenv {
    #echo "load-dotenv task not implemented"
    while read
function publish:test {
    #echo "publish:test task not implemented"
    twine upload "$THIS_DIR/dist/*" \
        --repository testpypi \
        --username __token__ \
        --password "$TEST_PYPI_API_TOKEN"
}

function start {
    echo "start task not implemented"
}

function default {
    start
}

function help {
    echo "$0 <task> <args>"
    echo "Tasks:"
    compgen -A function | cat -n
}

TIMEFORMAT="Task completed in %3lR"
time ${@:-default}