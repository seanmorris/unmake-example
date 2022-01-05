#!/usr/bin/env make
SHELL=/usr/bin/env bash -euo pipefail

outbox/%.digest.json: inbox/% .salt
	jq -n \
		--arg algo "SHA" \
		--arg file "$<" \
		--arg salt "$$(cat .salt)" \
		--arg hash "$$(sha256sum <( cat .salt "$<" ) | cut -d' ' -f1)" \
		'{"file":$$file, "hash": $$hash, "salt": $$salt, "algo": $$algo}' > "$@"
