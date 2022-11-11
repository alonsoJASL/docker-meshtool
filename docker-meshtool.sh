#!/usr/bin/env bash
set -euo pipefail

if [ $# -eq 0 ] ; then
    >&2 echo 'No arguments supplied'
    >&2 echo 'Usage:'
    >&2 echo 'docker-meshtool.sh DATA_PATH COMMAND [OPTIONS] PARAMETERS'
    >&2 echo ''
    >&2 echo 'DATA_PATH  : Path to folder containing data, if you cd into the folder, use $(pwd)'
    >&2 echo 'COMMAND    : Command to run in meshtool'
    >&2 echo 'OPTIONS    : Options for command run in meshtool'
    >&2 echo 'PARAMETERS : Parameters for command run in meshtool'

    exit 1
fi

DATA=$1
docker run --rm --volume="$DATA":/shared:z --workdir=/shared docker.opencarp.org/opencarp/opencarp:latest meshtool ${@:2}
