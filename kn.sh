#!/bin/bash
green=`tput setaf 2`
red=`tput setaf 1`
reset=`tput sgr0`

if [ "$1" == "" ]; then
    all_namespace=$(kubectl get ns | sed 1d | awk '{print $1}')
    current_namespace=$(kubectl config get-contexts | sed 1d | grep '*' | awk '{print $5}')
    if [ "$current_namespace" == "" ]; then
        echo "Current namespace is not set. Set using kn <namespace>"
        echo "$all_namespace"
    else
        current_namespace_line_number=$(echo "$all_namespace" | cat -n | grep "$current_namespace$" | awk '{print $1}')
        echo "$all_namespace" | sed "$current_namespace_line_number s/.*/$(tput setaf 2)&$(tput sgr0)/"
    fi
else
    is_namespace_exists=""
    all_namespace=$(kubectl get ns | sed 1d | awk '{print $1}')
    for namespace in $all_namespace
    do

        if [ $namespace == "$1" ]; then
            is_namespace_exists="yes"
        fi

    done
    if [ "$is_namespace_exists" == "yes" ]; then
        kubectl config set-context --current --namespace="$1" > /dev/null 2>&1 && echo "Current namespace switched to \""${green}"$1"${reset}"\""
    else
        echo "${red}error:${reset} no namespace exists with name \"$1\""
    fi

fi