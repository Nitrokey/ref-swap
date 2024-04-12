.PHONY= test, clippy

test:
	cargo test
	RUSTFLAGS='--cfg loom' cargo test loom

test-miri:
	cargo +nightly miri test

clippy:
	cargo clippy --all-targets --all-features
	RUSTFLAGS='--cfg loom' cargo clippy --all-targets --all-features

