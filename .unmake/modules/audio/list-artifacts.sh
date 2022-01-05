#!/usr/bin/env bash
set -euo pipefail;
# set -x;

while read -r FILENAME; do

	BASENAME=`basename "${FILENAME}"`;

	echo  "./outbox/${BASENAME%.*}-192.mp3";
	echo  "./outbox/${BASENAME%.*}-128.mp3";
	echo  "./outbox/${BASENAME%.*}-96.mp3";
done
