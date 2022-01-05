#!/usr/bin/env make
SHELL=/usr/bin/env bash -euo pipefail

outbox/%-320.mp4: inbox/%.mp4
	ffmpeg -i $< -vf "scale=320:200:force_original_aspect_ratio=decrease,pad=320:200-1:-1:color=black" $@

outbox/%.mp4-thumbnail-320.jpg: inbox/%.mp4
	ffmpeg -ss 00:00:01.00 -i $< -vf 'scale=320:200:force_original_aspect_ratio=decrease' -vframes 1 $@


outbox/%-480.mp4: inbox/%.mp4
	ffmpeg -i $< -vf "scale=640:480:force_original_aspect_ratio=decrease,pad=640:480:-1:-1:color=black" $@

outbox/%.mp4-thumbnail-480.jpg: inbox/%.mp4
	ffmpeg -ss 00:00:01.00 -i $< -vf 'scale=640:480:force_original_aspect_ratio=decrease' -vframes 1 $@


outbox/%-720.mp4: inbox/%.mp4
	ffmpeg -i $< -vf "scale=1280:720:force_original_aspect_ratio=decrease,pad=1280:720:-1:-1:color=black" $@

outbox/%.mp4-thumbnail-720.jpg: inbox/%.mp4
	ffmpeg -ss 00:00:01.00 -i $< -vf 'scale=1280:720:force_original_aspect_ratio=decrease' -vframes 1 $@


outbox/%-1080.mp4: inbox/%.mp4
	ffmpeg -i $< -vf "scale=1920:1080:force_original_aspect_ratio=decrease,pad=1920:1080:-1:-1:color=black" $@

outbox/%.mp4-thumbnail-1080.jpg: inbox/%.mp4
	ffmpeg -ss 00:00:01.00 -i $< -vf 'scale=1920:1080:force_original_aspect_ratio=decrease' -vframes 1 $@
