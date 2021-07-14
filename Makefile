.PHONY: all build push

all: build
	make push
	@echo "=== DONE ==="

build:
	docker login --username=ajv21 -p=Jun21@2021
	docker buildx create --name mybuildkit
	docker buildx use mybuildkit
	docker buildx rm mybuildkit
	
