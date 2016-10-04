#!/usr/bin/env bash

set -e
OUTPUT="$PWD/cf-webui-app"

echo "DEBUG - OUTPUT: <$OUTPUT>"
mkdir -p $OUTPUT/build


pushd cf-webui
    npm install
    npm install grunt-cli
    export PATH=$PWD/node_modules/grunt-cli/bin:$PATH
    grunt build
    cp -R build/* $OUTPUT/build
    cp manifest.yml $OUTPUT/
popd


