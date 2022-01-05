#!/usr/bin/env make
SHELL=/usr/bin/env bash -euo pipefail

outbox/%-320.jpg: inbox/%.jpg
	convert $< -resize 320x200 -gravity Center -crop 320x200+0+0 +repage $@

outbox/%-320.png: inbox/%.png
	convert $< -resize 320x200 -gravity Center -crop 320x200+0+0 +repage $@


outbox/%-640.jpg: inbox/%.jpg
	convert $< -resize 640x480 -gravity Center -crop 640x480+0+0 +repage $@

outbox/%-640.png: inbox/%.png
	convert $< -resize 640x480 -gravity Center -crop 640x480+0+0 +repage $@


outbox/%-1024.jpg: inbox/%.jpg
	convert $< -resize 1024x768 -gravity Center -crop 1024x768+0+0 +repage $@

outbox/%-1024.png: inbox/%.png
	convert $< -resize 1024x768 -gravity Center -crop 1024x768+0+0 +repage $@
