pkgs <- c(
  "knitr",
  "rmarkdown",
  "tidyverse",
  "ggplot2",
  "R6",
  "igraph",
  "DBI",
  "RSQLite",
  "collections"
)

install.packages(
  pkgs,
  repos = "https://cloud.r-project.org",
  Ncpus = 2L
)
