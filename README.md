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
         -d \
         -e DREAMOBJECTS_BUCKET=<your-bucket-name> \
         -e DREAMOBJECTS_KEY=<your-access-key> \
         -e DREAMOBJECTS_SECRET=<your-secret-key> \
         -p 5000:5000 \
         --name registry
         ewoutp/dreamobjects-registry
```

Now you can use the registry like this:

```
docker push localhost:5000/some-image
```

Building
========

To build this images from the source, pull the github repository and execute this:
```
docker build -t ewoutp/dreamobjects-registry .
```

More options
============

To run the registry in a private environment, you probably want to avoid exposing port 5000 on all network devices since there is no access control.

To limit access to it, export port 5000 only on 127.0.0.1 and create an SSH tunnel to it.

```
docker run \
         -d \
         -e DREAMOBJECTS_BUCKET=<your-bucket-name> \
         -e DREAMOBJECTS_KEY=<your-access-key> \
         -e DREAMOBJECTS_SECRET=<your-secret-key> \
         -p 127.0.0.1:5000:5000 \
         --name registry
         ewoutp/dreamobjects-registry
```
