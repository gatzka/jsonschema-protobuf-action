#!/bin/sh
set -ex

JSONSCHEMA_OPTIONS="--jsonschema_out=json_fieldnames,disallow_additional_properties:"
if [ "x$INPUT_OPTIONS" != 'x' ]; then
  JSONSCHEMA_OPTIONS+=$INPUT_OPTIONS
  JSONSCHEMA_OPTIONS+=":"
fi
JSONSCHEMA_OPTIONS+="INPUT_OUTPUT_DIR"

mkdir -p $INPUT_OUTPUT_DIR

protoc $JSONSCHEMA_OPTIONS --proto_path=$INPUT_PROTO_PATH $INPUT_PROTO_FILE

