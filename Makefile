.PHONY: all build push

all: build
	make push
	@echo "=== DONE ==="

build:
    docker --version
	docker login --username=ajv21 -p=Jun21@2021
