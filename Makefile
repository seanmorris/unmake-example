#!/usr/bin/env make

MAKEFLAGS += --no-builtin-rules --warn-undefined-variables

HASH_SOURCES=$(shell find ./files/ -type f | grep -v '\/\.')
HASH_TARGETS=${HASH_SOURCES:./files/%=./hashes/%.sha-digest}

all: ${HASH_TARGETS}

include .unmake/unmake/Makefile

hashes/%.sha-digest: files/% .salt
	bin/hash-files.sh $< > $@
