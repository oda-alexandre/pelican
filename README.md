# PELICAN

<img src="https://www.alexjf.net/blog/site/website-ported-to-pelican/images/thumbnails/_x360/logo.png" />


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [Utilisation](#UTILISATION)
- [License](#LICENSE)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/pelican/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/pelican/commits/master)


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
