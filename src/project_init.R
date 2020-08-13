## project initiation script
## mainly for reproducibility reasons
if (!require("renv")) install.packages("renv")

library("renv")
renv::init()

library("tidyverse")
