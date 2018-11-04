# PELICAN

![pelican](https://raw.githubusercontent.com/oda-alexandre/pelican/master/logo-pelican.png) ![docker](https://raw.githubusercontent.com/oda-alexandre/pelican/master/logo-docker.png)


## INDEX

- [Build Docker](#BUILD)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BUILD DOCKER

[![pelican docker build](https://img.shields.io/docker/build/alexandreoda/pelican.svg)](https://hub.docker.com/r/alexandreoda/pelican)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de [Pelican](https://pelican.io/) pour [Docker](https://www.docker.com), mis à jour automatiquement dans le [Docker Hub](https://hub.docker.com/r/alexandreoda/pelican/) public.


## PREREQUIS

Installer [Docker](https://www.docker.com)


## INSTALLATION

Placez vous dans le dossier de votre site puis copier/coller dans un terminal

```
docker run -it --name pelican -p 127.0.0.1:8000:8000 -v $(pwd):/srv/pelican alexandreoda/pelican
```

Pour creer un nouveau site

```
pelican-quickstart
```

Pour reprendre un site

```
./develop_server.sh restart 8000
```

Si vous utilisez Makefile utilisez

```
make devserver
```

Lien vers votre site en developement http://127.0.0.1:8000/


**LICENSE**

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/pelican/blob/master/LICENSE)
