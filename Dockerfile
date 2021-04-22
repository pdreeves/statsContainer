FROM continuumio/anaconda3

LABEL version="2021.04.22"
LABEL maintainer="github.com/pdreeves"
LABEL description="A container I use for stats work."

# Volume for external code
VOLUME /opt/code

CMD bash
