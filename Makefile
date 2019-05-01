# Update the bindings using bindgen.
#
# Usage: make bindings
#
# Requires bindgen to be installed; use:
# 	cargo install --force bindgen.

.PHONY: bindings clean

bindings: src/bindings.rs

src/bindings.rs: wrapper.h vendor/include/libnewrelic.h
	bindgen wrapper.h -o src/bindings.rs

clean:
	cd vendor && make clean
