.PHONY: all build push

all: build
	make push
	@echo "=== DONE ==="

build:
	docker --version
