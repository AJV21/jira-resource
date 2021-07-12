.PHONY: all build push

all: build
	make push 
	@echo "=== DONE ==="

build:
	docker login --username=ajv21 -p=Jun21@2021
    docker buildx build --platform linux/arm64 -t ajv21/sample:buildx_test64 .

