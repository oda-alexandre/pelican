# PELICAN

[![dockeri.co](https://dockeri.co/image/alexandreoda/atom)](https://hub.docker.com/r/alexandreoda/atom)


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [Utilisation](#UTILISATION)
- [License](#LICENSE)


## BADGES

[![version](https://images.microbadger.com/badges/version/alexandreoda/atom.svg)](https://microbadger.com/images/alexandreoda/atom)
[![size](https://images.microbadger.com/badges/image/alexandreoda/atom.svg)](https://microbadger.com/images/alexandreoda/atom")
[![build](https://img.shields.io/docker/build/alexandreoda/atom.svg)](https://hub.docker.com/r/alexandreoda/atom)
[![automated](https://img.shields.io/docker/automated/alexandreoda/atom.svg)](https://hub.docker.com/r/alexandreoda/atom)


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
