FROM python:2

LABEL authors https://www.oda-alexandre.com

ENV USER pelican
ENV HOME /home/${USER}
ENV PORTS 8000
ENV DEBIAN_FRONTEND noninteractive

RUN echo -e '\033[36;1m ******* INSTALL PACKAGES ******** \033[0m' && \
  apt-get update && apt-get install -y --no-install-recommends \
  sudo \
  && \
  echo -e '\033[36;1m ******* INSTALL PACKAGES PYTHON ******** \033[0m' && \
  pip install \
  markdown \
  pelican \
  && \
  echo -e '\033[36;1m ******* CLEANING ******** \033[0m' && \
  apt-get --purge autoremove -y && \
  apt-get autoclean -y && \
  rm /etc/apt/sources.list && \
  rm -rf /var/cache/apt/archives/* && \
  rm -rf /var/lib/apt/lists/*

RUN echo -e '\033[36;1m ******* ADD USER & ADD USER TO THE GROUP PELICAN******** \033[0m' && \
  useradd -d ${HOME} -m ${USER} && \
  passwd -d ${USER} && \
  adduser ${USER} sudo  && \
  usermod -a -G pelican ${USER}

RUN echo -e '\033[36;1m ******* CREATE & SECURISE WORKING SPACE ******** \033[0m' && \
  mkdir /srv/pelican && \
  chmod 775 /srv/pelican && \
  chown www-data:pelican /srv/pelican

RUN echo -e '\033[36;1m ******* SELECT WORKING SPACE ******** \033[0m'
WORKDIR /srv/pelican

RUN echo -e '\033[36;1m ******* SELECT USER ******** \033[0m'
USER ${USER}

RUN echo -e '\033[36;1m ******* OPENING PORTS ******** \033[0m'
EXPOSE ${PORTS}

RUN echo -e '\033[36;1m ******* CONTAINER START COMMAND ******** \033[0m'
CMD /bin/bash \