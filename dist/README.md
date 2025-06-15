```shell
# Build
./generate.sh
./make.sh

# Generate types
npx --yes webidl-dts-gen -e -n PhysX -i PhysX/physx/source/webidlbindings/src/wasm/PhysXWasm.idl -o dist/index.d.ts
```
