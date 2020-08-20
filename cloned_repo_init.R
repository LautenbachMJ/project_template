## project initiation script
## when repo cloned from github with excisting 
if (!require("renv")) install.packages("renv")

library("renv")
#renv::init()
renv::activate()
