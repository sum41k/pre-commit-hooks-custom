#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

export PATH=$PATH:/usr/local/bin

if ! which hadolint &>/dev/null; then
    >&2 echo "Hadolint must be installed" 
    exit 1
fi

hadolint "$@"
