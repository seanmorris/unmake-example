#!/usr/bin/env bash

set -euo pipefail;

ALGO="SHA";
FILE="${1}";
HASH=$(sha256sum <( cat .salt "${1}" ) | cut -d' ' -f1);
SALT=$(cat .salt)

jq -n \
	--arg algo "${ALGO}" \
	--arg file "${FILE}" \
	--arg hash "${HASH}"\
	--arg salt "${SALT}" \
	'{"file":$file, "hash": $hash, "salt": $salt, "algo": $algo}'

