# tidyviz-base
[![Build Status](https://img.shields.io/badge/build-passed-brightgreen.svg)](https://img.shields.io/badge/build-passed-brightgreen.svg) [![](https://images.microbadger.com/badges/version/jvera/tidyviz-base.svg)](https://microbadger.com/images/jvera/tidyviz-base "Get your own version badge on microbadger.com")  [![license](https://img.shields.io/badge/license-GPLv2-blue.svg)](https://opensource.org/licenses/GPL-2.0)


image            | description                               | size   | metrics | build status 
---------------- | ----------------------------------------- | ------ | ------- | --------------
[tidyviz-base](https://hub.docker.com/r/jvera/tidyviz-base)            |  base for tidyviz   |[![](https://images.microbadger.com/badges/image/jvera/tidyviz-base.svg)](https://microbadger.com/images/jvera/tidyviz-base "Get your own image badge on microbadger.com")| [![](https://img.shields.io/docker/pulls/jvera/tidyviz-base.svg)](https://hub.docker.com/r/jvera/tidyviz-base) | [![](https://img.shields.io/docker/automated/jvera/tidyviz-base.svg)](https://hub.docker.com/r/jvera/tidyviz-base/builds)

Built upon rocker/ropensci:latest

#### This is a base image for tidyviz. just some libraries and github packages plus rJava

#### PLEASE CONSIDER any other tidyviz image instead for all packages and features (wrangler, stats, extra...)

## Quick Reference

Pull the image from repo:

```bash
docker pull jvera/tidyviz-base:latest
```
Then build a container:

```bash
docker run -d -p 8787:8787 jvera/tidyviz-base
```

Connect to port 8787 with your browser (rstudio as user and password) to check if your Rserver is up and running.
By default, the RStudio user does not have access to root, such that users cannot install binary libraries with apt-get without first entering the container. To enable root from within RStudio, launch the container with the flag -e ROOT=TRUE, e.g.

```bash
docker run -d -p 8787:8787 -e ROOT=TRUE jvera/tidyviz-base
```
You can now open a shell from RStudio (see the "Tools" menu), or directly from the R console using system(), e.g.

```bash
system("sudo apt-get install -y vim")
```

When container is built you can start it with:

```bash
docker start mycontainer --interactive /bin/bash
```

### Sharing data with host:

```bash
docker start mycontainer --interactive -v ~/dockerdata:/data /bin/bash
```

Any file you place there, will be available for the container to use, and vice versa. Maybe you need a Shiny Server, so run a Dockerized Shiny and share the same folder so you can develop your viz in Rstudio and serve with Shiny.

### More info: Using Rstudio Image

[https://github.com/rocker-org/rocker/wiki/Using-the-RStudio-image](https://github.com/rocker-org/rocker/wiki/Using-the-RStudio-image)

## Shiny

when running your image shiny should be installed and waiting on port 3838.
