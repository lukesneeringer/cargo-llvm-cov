# llvm-cov image

This repository contains Docker image for using `llvm-cov` to measure Rust coverage.

It derives from the nightly Rust image (`rustlang/rust:nightly-slim`) and additionally installs
`llvm-cov` as well as other dependencies that are commonly needed.

## Using the Image

This image can be used in GitHub Actions workflows:

```yaml
---
name: build
on:
  pull_request:
    branches:
      - main
jobs:
  build:
    runs-on: ubuntu-latest
    container:
      image: ghcr.io/lukesneeringer/cargo-llvm-cov
    steps:
      - uses: actions/checkout@v4
      # And so on...
```
