dreamobjects-registry
=====================

Docker registry capable of storing images in dreamobjects.

Getting started
===============

Get a pre-build version of this images using:
```
docker pull ewoutp/dreamobjects-registry
```

To run this version of the registry, create a (private) bucket on dreamobjects and then execute this:
```
docker run \
         -e DREAMOBJECTS_BUCKET=<your-bucket-name> \
         -e DREAMOBJECTS_KEY=<your-access-key> \
         -e DREAMOBJECTS_SECRET=<your-secret-key> \
         -p 5000:5000 \
         ewoutp/dreamobjects-registry
```

Building
========

To build this images from the source, pull the github repository and execute this:
```
docker build -t ewoutp/dreamobjects-registry .
```
