```shell
# Docker
clear && docker build -t physx-dev .
clear && docker run -it --rm --name physx-dev-container --entrypoint /bin/bash -v ${PWD}:/src physx-dev

# Build
./generate.sh
./make.sh

# Generate types
npx --yes webidl-dts-gen -e -n PhysX -i PhysX/physx/source/webidlbindings/src/wasm/PhysXWasm.idl -o dist/index.d.ts
```
