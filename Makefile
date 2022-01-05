#!/usr/bin/env make
SHELL=/usr/bin/env bash -euo pipefail
MAKEFLAGS += --no-builtin-rules --warn-undefined-variables --no-print-directory

all: targets

include .unmake/unmake/Makefile

$(call IMPORT_MODULE,publisher)
$(call IMPORT_MODULE,digest)
$(call IMPORT_MODULE,cropper)
$(call IMPORT_MODULE,audio)
$(call IMPORT_MODULE,video)

targets: unmake-index ${UNMAKE_TARGETS}

