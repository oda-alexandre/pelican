FROM python:2

MAINTAINER https://oda-alexandre.github.io

RUN mkdir /srv/pelican && \
chmod -R 777 /srv/pelican

WORKDIR /srv/pelican

RUN pip install markdown pelican

RUN useradd -d /home/pelican -m pelican && \
passwd -d pelican && \
adduser pelican sudo

USER pelican

CMD /bin/bash
