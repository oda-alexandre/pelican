# PELICAN

[![dockeri.co](https://dockeri.co/image/alexandreoda/pelican)](https://hub.docker.com/r/alexandreoda/pelican)


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [Utilisation](#UTILISATION)
- [License](#LICENSE)


## BADGES

[![version](https://images.microbadger.com/badges/version/alexandreoda/pelican.svg)](https://microbadger.com/images/alexandreoda/pelican)
[![size](https://images.microbadger.com/badges/image/alexandreoda/pelican.svg)](https://microbadger.com/images/alexandreoda/pelican")
[![build](https://img.shields.io/docker/build/alexandreoda/pelican.svg)](https://hub.docker.com/r/alexandreoda/pelican)
[![automated](https://img.shields.io/docker/automated/alexandreoda/pelican.svg)](https://hub.docker.com/r/alexandreoda/pelican)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de

- [Pelican](https://pelican.io/)

Mis à jour automatiquement dans le [docker hub public](https://hub.docker.com/r/alexandreoda/pelican).


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

Placez vous dans le dossier de votre site puis copier/coller dans un terminal

```
docker run -it --name pelican -p 127.0.0.1:8000:8000 -v $(pwd):/srv/pelican alexandreoda/pelican
```


## UTILISATION

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
