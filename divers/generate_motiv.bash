#!/bin/sh

ROOTDIR=/d/donnees/fhollender/perso/cv
DATA=motiv.txt

[[ ! -d "$ROOTDIR" ]] && echo "[ERR] repertoire inconnu: $ROOTDIR" && return 1
[[ ! -f "$ROOTDIR/$DATA" ]] && echo "[ERR] fichier inconnu: $ROOTDIR/$DATA" && return 1

function __read_motivs () {
    grep -e '^M|' < $ROOTDIR/$DATA
}

function __read_motiv_by_id () {
    # check $1 is an id
    [[ -z "$1" ]] && echo "[ERR] __read_motiv_by_id: appel sans argument" && return 1

    grep -e '^M|'$1'|' < $ROOTDIR/$DATA
    #return $?
    #echo "[dbg] id=$1, statut=$?"
}

function __read_motiv_by_ids () {
    for id in $1 ; do
	__read_motiv_by_id $id
	[ 1 == "$?" ] && echo "M|!!!|[WARNING] id inconnu $id !!!"
    done
}

function __read_ids () {
    IDS=`__read_motivs | cut -d\| -f2 `
    echo $IDS
}

function __generate_text () {
    sed -e 's/^M|\([^|]*\)|\(.*\)/- \2/' --
}

__read_ids
__read_motiv_by_id 004
__read_motiv_by_id 008
__read_motiv_by_ids "000 003 007"
echo ""
echo "-------------------------------"
__read_motiv_by_ids "007 003 001" | __generate_text
