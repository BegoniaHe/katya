set positional-arguments

[default]
help:
  @just --list

fmt:
  cargo fmt --all

check:
  cargo check

lint:
  cargo clippy --all-targets --all-features -- -D warnings

test:
  cargo test

run *args='':
  cargo run -- {{args}}

clean:
  cargo clean

ci: fmt check lint test

precommit:
  pre-commit run --all-files
