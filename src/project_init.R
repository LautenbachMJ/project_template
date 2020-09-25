## project initiation script
## run first time you start using the new project

# What is renv::init() doing?
#   1. Creates a project-local environment
#   2. Activates the environment
#   3. Creating (or amending) a project-local .Rprofile that will automatically load and use the private library for new R sessions launched from the project root directory
#   4. Call renv::dependencies() function to go through all files in the project and identify any dependencies 
#   5. Call renv::hydrate() function, which will copy/install the detected dependencies into your local project environment. It will look for the packages in other user library (rather than re-installing from CRAN) as appropriate.
#   6. Write a rent.loc file that contains the information about all of the packages installed in the local project environment.

if (!require("renv")) install.packages("renv")

library("renv")
renv::init()

# When adding packages you already have been using in other project to this project use renv::hydrate()
renv::hydrate("knitr")
renv::hydrate("tidyverse")