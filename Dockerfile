FROM rocker/verse

COPY env.R /env.R

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    libpython3-dev \
    python3 \
    python3-pip \
    python3-venv \
  && pip3 install virtualenv \
  && Rscript env.R
