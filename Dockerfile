FROM python:2

MAINTAINER https://oda-alexandre.github.io

# CREATION ESPACE DE TRAVAIL
RUN mkdir /srv/pelican && \
chmod -R 777 /srv/pelican

# SELECTION ESPACE DE TRAVAIL
WORKDIR /srv/pelican

# INSTALLATION DES PREREQUIS python
RUN pip install markdown pelican

# AJOUT UTILISATEUR
RUN useradd -d /home/pelican -m pelican && \
passwd -d pelican && \
adduser pelican sudo

# SELECTION UTILISATEUR
USER pelican

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD /bin/bash
