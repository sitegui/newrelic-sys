newrelic-sys
============

[![docs.rs](https://docs.rs/newrelic-sys/badge.svg)](https://docs.rs/newrelic-sys)
[![crates.io](https://img.shields.io/crates/v/newrelic-sys.svg)](https://crates.io/crates/newrelic-sys)

Rust bindings to the [New Relic C SDK].

Requirements
------------

Building this library requires all the same [requirements] as the C-SDK. This library will _not_ currently link against musl, due to a few missing symbols (at least `qsort_r` and `backtrace`) - help would be appreciated in getting that to work!

Updating
--------

The Makefile included in this repository includes a `bindings` target. This requires `bindgen` to be installed. Updating the bindings should then be a case of:

    git submodule update
    make bindings

The latest bindings were generated using bindgen v0.5.2.

[New Relic C SDK]: https://github.com/newrelic/c-sdk
[requirements]: https://github.com/newrelic/c-sdk#requirements
[bindgen]: https://rust-lang.github.io/rust-bindgen
