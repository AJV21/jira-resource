.PHONY: all build 

all: build
	@echo "=== DONE ==="

build:

    - curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    - sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    - sudo apt-get update
    - sudo apt-get -y -o Dpkg::Options::="--force-confnew" install docker-ce
    - docker --version 
    - docker login --username=ajv21 -p=Jun21@2021
    - docker buildx create --name vigbuild
    - docker buildx use vigbuild
    - docker buildx inspect --bootstrap
    - free -m
    - docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
    - docker buildx build -t ajv21/sample:jira-resource --platform linux/arm64,linux/amd64 --push .
    - docker buildx rm vigbuild 

