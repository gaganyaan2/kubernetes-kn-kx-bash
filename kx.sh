#!/bin/bash
green=`tput setaf 2`
reset=`tput sgr0`

if [ "$1" == "" ]; then
    contexts_command_output=$(kubectl config get-contexts)
    all_context=$(echo "$contexts_command_output" | awk '{print $2}' | sed 1d )
    current_context_line_number=$(echo "$contexts_command_output" | sed 1d | grep -n '*' | awk -F: '{print $1}')
    echo "$contexts_command_output"| sed 1d | sed 's/*/ /g' | awk '{print $1}' | sed "$current_context_line_number s/.*/$(tput setaf 2)&$(tput sgr0)/"

else
    kubectl config use-context "$1"
fi