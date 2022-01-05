#!/usr/bin/env bash
set -euo pipefail;
# set -x;

while read -r FILENAME; do

	[[ ${FILENAME} == ".salt" ]] && {
		.unmake/modules/digest/list-sources.sh \
		| grep -v .salt \
		| .unmake/modules/digest/list-artifacts.sh;
		continue;
	}

	BASENAME=`basename "${FILENAME}"`;

	echo  "./outbox/${BASENAME}.digest.json";

done
