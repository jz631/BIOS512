FROM rocker/binder:3.6.0

ARG NB_USER
ARG NB_UID

RUN pip3 install jupyterlab==1.0.9

COPY install.R ./
RUN if [ -f install.R ]; then R -f install.R; fi
