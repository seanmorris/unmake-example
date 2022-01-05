#!/usr/bin/env bash
set -euo pipefail;

find ./inbox/ -type f -name '*.jpg' -o -name '*.png' | grep -v '\/\.'
