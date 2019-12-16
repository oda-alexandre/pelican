# PELICAN

<img src="https://www.alexjf.net/blog/site/website-ported-to-pelican/images/thumbnails/_x360/logo.png" width="200" height="200"/>

## INDEX

- [PELICAN](#pelican)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/pelican/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/pelican/commits/master)

## INTRODUCTION

Docker image of :

- [Pelican](https://pelican.io/)

Continuous integration on :

- [gitlab](https://gitlab.com/oda-alexandre/pelican/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/pelican).

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

put in the folder of your site

```docker run -it --name pelican -p 127.0.0.1:8000:8000 -v $(pwd):/srv/pelican --restart always alexandreoda/pelican```

## USE

To create a new site

```pelican-quickstart```

To resume a site

```./develop_server.sh restart 8000```

If you use Makefile

```make devserver```

Link to your site in developement <http://127.0.0.1:8000/>

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/pelican/blob/master/LICENSE)
