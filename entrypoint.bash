#! /bin/bash
# Copyright (C) 2018 Sebastian Pipping <sebastian@pipping.org>
# Licensed under the MIT license

set -e

PS4='# '
set -x

LC_ALL=C.UTF-8 lazygal /var/www/html/files/Exhibitions/

if [[ $# -gt 1 ]]; then
    "$@"
fi
