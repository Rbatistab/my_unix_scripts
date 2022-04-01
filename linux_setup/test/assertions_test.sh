#!/bin/bash

# ------------------------------------------------------------------------------
# This is Unit testing for 'utils/assertions.sh'

PROJECT_DIR=$(dirname $(dirname $(realpath $0) ) )

source $PROJECT_DIR/utils/assertions.sh

# Testing 'command_execution_assertion'

command_execution_assertion echo "hi"
