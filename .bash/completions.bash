#!/bin/sh

function __toto_completion () 
{
    local cur
    COMPREPLY=()
    cur=${COMP_WORDS[COMP_CWORD]}

    case "$cur" in
	-*)
	    COMPREPLY=( $( compgen -W '--toto --titi --tutu' -- $cur ) );;
    esac
    return 0
}

complete -o bashdefault -o default -o nospace -F __toto_completion toto 
