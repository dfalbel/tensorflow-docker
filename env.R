remotes::install_github(c(
    "rstudio/tensorflow", "rstudio/tfprobability", "rstudio/keras", "rstudio/tfdatasets"
))

# Set python envs
reticulate::py_install(c("tf-nightly-2.0-preview", "tfp-nightly"), envname = "/home/rstudio/.virtualenvs/tf-nightly")
reticulate::py_install(c("tensorflow==2.0.0rc0", "tensorflow-probability==0.8.0rc0"), envname = "/home/rstudio/.virtualenvs/tf-2")
reticulate::py_install(c("tensorflow", "tensorflow-probability"), envname = "/home/rstudio/.virtualenvs/tf-stable")

## workaround to install gast==0.2.2.
reticulate::virtualenv_remove(packages = "gast", envname = "/home/rstudio/.virtualenvs/tf-nightly")
reticulate::virtualenv_remove(packages = "gast", envname = "/home/rstudio/.virtualenvs/tf-2")
reticulate::virtualenv_remove(packages = "gast", envname = "/home/rstudio/.virtualenvs/tf-stable")

reticulate::py_install("gast==0.2.2", envname = "/home/rstudio/.virtualenvs/tf-nightly")
reticulate::py_install("gast==0.2.2", envname = "/home/rstudio/.virtualenvs/tf-2")
reticulate::py_install("gast==0.2.2", envname = "/home/rstudio/.virtualenvs/tf-stable")
