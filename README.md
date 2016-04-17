# docker-hugo

This repository contains directives to build three
Docker containers:

* databliss/hugo - a foundation image
* databliss/hugo-compiler - an image running Hugo as a compiler
* databliss/hugo-server - an image running Hugo as a local server

databliss/hugo
--------------

Builds an installation of Hugo 0.15 on the Alpine Linux 3.3 release.
This is used by the other images.

databliss/hugo-compiler
------------------------

Build a Docker image to be used as a single transformation
of a web site definition into a static web site.
Most useful for the final preparation of a web site before
uploading to production servers.


databliss/hugo-server
---------------------

Build a Docker image to be used as a Hugo web site transformer
and web site.
Hugo is configured to track edit changes and to immediately update
browsers.

