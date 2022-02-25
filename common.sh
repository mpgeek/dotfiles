#/usr/bin/env bash

##
## Bash funcitons
##

function echo_run {
    local __CMD=$1
    echo "++ ${__CMD}"
    eval ${__CMD}
}
