FROM python:2

MAINTAINER https://oda-alexandre.github.io

RUN mkdir /srv/pelican
RUN chmod -R 777 /srv/pelican

WORKDIR /srv/pelican

RUN pip install markdown pelican

RUN useradd -d /home/pelican -m pelican
RUN passwd -d pelican
RUN adduser pelican sudo

USER pelican

CMD /bin/bash
