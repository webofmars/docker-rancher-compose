# Alpine images with rancher-compose included
[![dockeri.co](http://dockeri.co/image/identt/rancher-compose)](https://hub.docker.com/r/identt/rancher-compose/)

[![Build Status](https://travis-ci.org/IDENTT/docker-rancher-compose.svg?branch=master)](https://travis-ci.org/IDENTT/docker-rancher-compose)

This image is for rancher deployments. It works great in gitlab-ci's docker runner. Our deploy stage use that image and just calls rancher-compose.

You can select rancher-compose version with tags. For example, if you want version 0.12.4, use `identt/rancher-compose:0.12.4` image.
