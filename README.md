# docker-hugo

This repository contains directives to build three
Docker containers:

* databliss/hugo - a foundation image
* databliss/hugo-compiler - Hugo running as a compiler
* databliss/hugo-server - Hugo running as a local server

databliss/hugo
--------------

Builds an installation of Hugo 0.15 on the Alpine Linux 3.3 release.
This is used by the other images.

databliss/hugo-compiler
------------------------

Builds a Docker image to be used as a single transformation
of a web site definition into a static web site.
Most useful for the final preparation of a web site before
uploading to production servers.

    docker run --rm -e SITE_URL="http://www.mysite.com" -v $(pwd):/site databliss/hugo-compiler

The SITE_URL environment variable sets the target website base URL for all content generation.

The volume mapping of $(pwd):/site maps the current directory of the host computer
to the /site directory inside the container. 
Hugo is configured to work in that directory.

The --rm option removes the container after the transformation is complete.

databliss/hugo-server
---------------------

Builds a Docker image to be used as a Hugo web site transformer
and web site.
Hugo will track changes and update browsers.

    docker run -d -p 1313:1313 -e VIRTUAL_HOST="http://docker.local:1313" --name hugo-server databliss/hugo-server .

The VIRTUAL_HOST environment variable sets the local reference for browsers
accessing the live local site.

The -d option runs the container in detached mode (continuous server).

The -p 1313:1313 port mapping maps the internal port 1313 to the external port 1313.

