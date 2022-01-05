#!/usr/bin/env bash
set -euo pipefail;

find ./inbox/ -type f | grep -v '\/\.'

[[ -f .salt ]] && echo ".salt"
