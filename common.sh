#/usr/bin/env bash

function echo_run {
    local __CMD=$1
    echo " ++ ${__CMD}"
    eval ${__CMD}
}

function confirm_run {
    local __CMD=$1
    read -p " >> Perform \`$__CMD\` ? [ y/n ] " -n 1 -r
    echo   
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo_run "$__CMD"
    else
        echo " >> \`$__CMD\` skipped."
    fi
}
