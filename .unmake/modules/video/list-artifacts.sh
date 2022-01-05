#!/usr/bin/env bash
set -euo pipefail;
# set -x;

while read -r FILENAME; do

	BASENAME=`basename "${FILENAME}"`;

	echo  "./outbox/${BASENAME%.*}-320.mp4";
	echo  "./outbox/${BASENAME%.*}-480.mp4";
	echo  "./outbox/${BASENAME%.*}-720.mp4";
	echo  "./outbox/${BASENAME%.*}-1080.mp4";

	echo  "./outbox/${BASENAME}-thumbnail-320.jpg";
	echo  "./outbox/${BASENAME}-thumbnail-480.jpg";
	echo  "./outbox/${BASENAME}-thumbnail-720.jpg";
	echo  "./outbox/${BASENAME}-thumbnail-1080.jpg";

done
