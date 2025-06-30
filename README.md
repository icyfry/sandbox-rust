# Sandbox Rust

## Setup

* Tools
    * [taskfile](https://taskfile.dev/)

* Docs
    * https://www.rust-lang.org/
    * https://docs.rs/

Build the docker image for Rust
```
docker build -t sandbox-rust .
```

Launch docker with
```
task docker
```

## WASM (webassembly)

* Docs
    * https://webassembly.org/


### hello-wasm

In folder `wasm/hello-wasm`, test project from [mozilla tutorial](https://developer.mozilla.org/en-US/docs/WebAssembly/Guides/Rust_to_Wasm)


Build the web package as a simple js file, used in `hello-wasm/index.html`

```
wasm-pack build --target web
```

Build the web package as a dependency for `hello-wasm/site`

```
wasm-pack build --target bundler
```

In `hello-wasm/site` folder

```
pnpm i
pnpm run serve
```



