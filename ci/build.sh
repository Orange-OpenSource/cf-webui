#!/usr/bin/env bash

set -e
OUTPUT="$PWD/cf-webui-app"

echo "DEBUG - OUTPUT: <$OUTPUT> - VERSION: <$VERSION>"
mkdir -p $OUTPUT


pushd cf-webui
    npm install
    npm install grunt-cli
    export PATH=$PWD/node_modules/grunt-cli/bin:$PATH
    grunt build
    cp -R build/* $OUTPUT
popd


