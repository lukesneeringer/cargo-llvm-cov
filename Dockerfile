FROM rustlang/rust:nightly-slim

# Install dependencies
RUN apt update && \
  apt install -y curl clang git gpg libssl-dev pkg-config && \
  apt clean

# Install LLVM tools.
RUN rustup +nightly component add llvm-tools-preview

# Install llvm-cov and nextest.
RUN cargo +nightly install cargo-llvm-cov && \
  cargo +nightly install cargo-nextest && \
  rm -rf ~/.cargo/registry
