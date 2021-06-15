#!/usr/bin/env bash

set -euxo pipefail;

sha256sum <( cat .salt "${1}" ) | cut -d' ' -f1;