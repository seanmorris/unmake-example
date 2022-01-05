#!/usr/bin/env bash
set -euo pipefail;

find ./inbox/ -type f -name '*.md' -o -name '*.txt' | grep -v '\/\.'
