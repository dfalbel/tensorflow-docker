FROM rocker/verse

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    libpython3-dev \
    python3 \
    python3-pip

RUN pip3 install virtualenv 

RUN Rscript -e 'remotes::install_github("rstudio/tensorflow")'
RUN Rscript -e 'remotes::install_github("rstudio/tfprobability")'
RUN Rscript -e 'remotes::install_github("rstudio/keras")'
RUN Rscript -e 'remotes::install_github("rstudio/tfdatasets")'

RUN Rscript -e 'reticulate::py_install(c("tf-nightly-2.0-preview", "tfp-nightly", "gast==0.2.2"), envname = "/home/rstudio/.virtualenvs/tf-nightly")'
RUN Rscript -e 'reticulate::py_install(c("tensorflow==2.0.0rc0", "tensorflow-probability==0.8.0rc0", "gast==0.2.2"), envname = "/home/rstudio/.virtualenvs/tf-2")'
RUN Rscript -e 'reticulate::py_install(c("tensorflow", "tensorflow-probability", "gast==0.2.2"), envname = "/home/rstudio/.virtualenvs/tf-stable")'
