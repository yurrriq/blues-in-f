all:
	install -dm755 out
	nix-build --no-out-link | xargs -I% find % -type f | xargs install -m644 -t out
