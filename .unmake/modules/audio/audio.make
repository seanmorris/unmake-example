#!/usr/bin/env make
#SHELL=/usr/bin/env bash -euo pipefail

TARGETS+=$(call ENUMERATE,audio)

outbox/%-192.mp3: inbox/%.mp3
	ffmpeg -i "$<" -c:a libmp3lame -b:a 192k "$@"

outbox/%-128.mp3: inbox/%.mp3
	ffmpeg -i "$<" -c:a libmp3lame -b:a 128k "$@"

outbox/%-96.mp3: inbox/%.mp3
	ffmpeg -i "$<" -c:a libmp3lame -b:a 96k "$@"

