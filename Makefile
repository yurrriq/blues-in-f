prefix ?= out
all:
	install -dm755 ${prefix}
	nix-build --no-out-link | xargs -I% find % -type f | xargs install -m644 -t ${prefix}
