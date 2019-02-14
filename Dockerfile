FROM python:2

MAINTAINER https://oda-alexandre.github.io

# AJOUT UTILISATEUR
RUN useradd -d /home/pelican -m pelican && \
passwd -d pelican && \
adduser pelican sudo

# CREATION ESPACE DE TRAVAIL
RUN mkdir /srv/pelican

# SECURISATIONS ESPACE DE TRAVAIL
RUN chmod 775 /srv/pelican && \
chown www-data:pelican /srv/pelican

# AJOUT DE L'UTILISATEUR AU GROUPE PELICAN
RUN usermod -a -G pelican pelican

# SELECTION ESPACE DE TRAVAIL
WORKDIR /srv/pelican

# INSTALLATION DES PREREQUIS python
RUN pip install markdown pelican

# SELECTION UTILISATEUR
USER pelican

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD /bin/bash
