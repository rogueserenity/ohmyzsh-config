#!/bin/zsh

function newdcp() {
    DATE=$(date +%Y%m%d)
    new_simple_go_repo "dcp-${DATE}"
}

function new_simple_go_repo() {
    REPO=$1
    gh repo create "${REPO}" -p dcp-template --public
}
alias nsgr="new_simple_go_repo $@"