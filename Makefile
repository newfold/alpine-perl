DOCKER_USER  := newfold
DOCKER_NAME  := alpine-perl
DOCKER_TAG   := 5.32
DOCKER_IMAGE := $(DOCKER_USER)/$(DOCKER_NAME):$(DOCKER_TAG)

default:

build:
	docker build -t $(DOCKER_IMAGE) .

push: build
	docker push $(DOCKER_IMAGE)
