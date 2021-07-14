.PHONY: all build push

all: build
	make push
	@echo "=== DONE ==="

build:
	docker --version
	docker login --username=ajv21 -p=Jun21@2021
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
	sudo apt-get update
	sudo apt-get -y -o Dpkg::Options::="--force-confnew" install docker-ce
	docker --version
