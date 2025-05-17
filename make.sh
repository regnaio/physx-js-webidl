#!/bin/bash

cd PhysX/physx/compiler/emscripten-release/
rm sdk_source_bin/physx-js-webidl.*
# make -j8 # Fails if machine is too fast
make -j4

cp sdk_source_bin/physx-js-webidl.js ../../../../dist/
cp sdk_source_bin/physx-js-webidl.wasm ../../../../dist/
