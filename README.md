# **<center>Pelican</center>**


**INTRODUCTION**

*pelican https://blog.getpelican.com/ via docker*


**PREREQUIS**

*Installer docker*


**INSTALLATION**

placez vous dans le dossier de votre site puis copier/coller dans un terminal :

    docker run -it --name pelican -p 127.0.0.1:8000:8000 -v $(pwd):/srv/pelican alexandreoda/pelican


pour creer un nouveau site :

    pelican-quickstart


pour reprendre un site

    ./develop_server.sh restart 8000

si vous utilisez Makefile utilisez

    make devserver


Lien vers votre site en developement http://127.0.0.1:8000/


**LICENSE**

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/pelican/blob/master/LICENSE)
