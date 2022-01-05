#!/usr/bin/env bash
set -euo pipefail;

find ./inbox/ -type f -name '*.mp4' | grep -v '\/\.'
