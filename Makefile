.PHONY: all build 

all: build
	@echo "=== DONE ==="

build:
    docker login --username=ajv21 -p=Jun21@2021
    docker buildx build -t ajv21/sample/:buildx_test --platform linux/amd64,linux/arm64 --push .

