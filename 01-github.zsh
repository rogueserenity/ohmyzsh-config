#!/bin/zsh

function newdcp() {
    typeset -Z4 PROBLEM
    PROBLEM=$1
    curl -sL https://github.com/jragingfury/dcp-template/archive/refs/heads/main.zip --output template.zip
    unzip -qq template.zip
    rm -f template.zip
    mv dcp-template-main "dcp-${PROBLEM}"
    sed -i "" "s/template/${PROBLEM}/g" "dcp-${PROBLEM}/README.md"
}

function new_simple_go_repo() {
    REPO=$1
    gh repo create "${REPO}" -p dcp-template --public
    git clone git@github.com:jragingfury/${REPO}.git
}
alias nsgr="new_simple_go_repo $@"