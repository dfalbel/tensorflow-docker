remotes::install_github(c(
    "rstudio/tensorflow", "rstudio/tfprobability", "rstudio/keras", "rstudio/tfdatasets",
    "rstudio/tfhub", "rstudio/tfds"
))

# Set python envs
reticulate::py_install(c("tf-nightly-2.0-preview", "tfp-nightly", "tensorflow_hub", "tensorflow_datasets"), envname = "/home/rstudio/.virtualenvs/tf-nightly")
reticulate::py_install(c("tensorflow==2.0.0", "tensorflow-probability==0.8.0", "tensorflow_hub", "tensorflow_datasets"), envname = "/home/rstudio/.virtualenvs/tf-2")
reticulate::py_install(c("tensorflow", "tensorflow-probability", "tensorflow_hub", "tensorflow_datasets"), envname = "/home/rstudio/.virtualenvs/tf-stable")

