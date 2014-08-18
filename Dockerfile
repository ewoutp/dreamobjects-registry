# Create dreamobjects-registry docker image.
# To build run: docker build -t <yourname>/dreamobjects-registry .

FROM registry

ADD ./boto.cfg /etc/boto.cfg
ADD ./config.yml /registry-config.yml

ENV SETTINGS_FLAVOR dreamobjects
ENV BOTO_CONFIG /etc/boto.cfg
ENV DOCKER_REGISTRY_CONFIG /registry-config.yml

