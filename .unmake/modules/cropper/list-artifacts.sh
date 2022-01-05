#!/usr/bin/env bash
set -euo pipefail;
# set -x;

while read -r FILENAME; do

	BASENAME=`basename "${FILENAME}"`;

	echo  "./outbox/${BASENAME%.*}-320.${BASENAME#*.}";
	echo  "./outbox/${BASENAME%.*}-640.${BASENAME#*.}";
	echo  "./outbox/${BASENAME%.*}-1024.${BASENAME#*.}";

done
