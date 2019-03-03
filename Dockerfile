FROM python:2

MAINTAINER https://oda-alexandre.com

# VARIABLES
ENV USER android
ENV DEBIAN_FRONTEND noninteractive

# AJOUT UTILISATEUR
RUN useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo  && \

# CREATION ESPACE DE TRAVAIL
mkdir /srv/pelican && \

# SECURISATIONS ESPACE DE TRAVAIL
chmod 775 /srv/pelican && \
chown www-data:pelican /srv/pelican && \

# AJOUT DE L'UTILISATEUR AU GROUPE PELICAN
usermod -a -G ${USER} pelican

# SELECTION ESPACE DE TRAVAIL
WORKDIR /srv/pelican

# INSTALLATION DES PREREQUIS python
RUN pip install markdown pelican

# SELECTION UTILISATEUR
USER ${USER}

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD /bin/bash
