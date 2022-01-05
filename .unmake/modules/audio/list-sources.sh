#!/usr/bin/env bash
set -euo pipefail;

find ./inbox/ -type f -name '*.mp3' | grep -v '\/\.'
