# IMAGE TO USE
FROM python:2

# MAINTAINER
MAINTAINER https://www.oda-alexandre.com/

# VARIABLES
ENV USER pelican
ENV PORTS 8000
ENV DEBIAN_FRONTEND noninteractive

# INSTALL PACKAGES
RUN apt-get update && apt-get install -y --no-install-recommends \
sudo && \

# ADD USER
useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo  && \

# CREATION ESPACE OF TRAVAIL
mkdir /srv/pelican && \

# SECURISE WORKING SPACE
chmod 775 /srv/pelican && \
chown www-data:pelican /srv/pelican && \

# ADD OF USER TO THE GROUP PELICAN
usermod -a -G pelican ${USER}

# SELECT WORKING SPACE
WORKDIR /srv/pelican

# INSTALL PACKAGES python

RUN pip install markdown pelican

# SELECT USER
USER ${USER}

# OPENING PORTS
EXPOSE ${PORTS}

# START THE CONTAINER
CMD /bin/bash \
