#!/bin/bash

cd PhysX/physx/compiler/emscripten-release/
rm sdk_source_bin/physx-js-webidl.*
make -j4 # `-j` fails if machine is too fast
# make

cp sdk_source_bin/physx-js-webidl.mjs ../../../../dist/
cp sdk_source_bin/physx-js-webidl.wasm ../../../../dist/

if [ -d "/src/types" ]; then
    cp /src/types/physx-js-webidl.d.ts /src/dist/
fi
