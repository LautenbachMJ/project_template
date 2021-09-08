# Project template to start a new computational project
### Our suggestion for project organisation and better reproducibility

## General info
This repository contains our idea project directory structure to make computational research projects within our group easier to work with and more reproducible. This project structure is currently our best suggestion but we are happy for suggestions and discussions.

## Table of contents
* [General info](#general-info)
* [Repo description](#repo-description)
* [Getting started](#getting-started)
* [Initiating your R environment (Reproducibility feature)](#init_renv)
* [Create R markdowns from template (Reproducibility feature)](#markdown)
* [Thoughts and Comments](#thoughs-comments)


## Repo description
This repository provides a template for new computational projects. It contains a pre-defined structure, as well as some features for reproducible research using an R project and version control via GitHub.
  * Pre-defined directory structure with readme files
  * Description on how to connect a template-based repository with rstudio
  * Several features to help analysis reproducibility

<a name="getting-started"></a>
## :technologist: Getting started

### Creating a your own repository from this repository template
1.	Create a new GitHub repository based on [this template](https://github.com/LautenbachMJ/project_template). Click on the green button (“Use this template”). Give it a appropriate name. You may want to set your repository to private if (otherwise everyone can see your code). You can make the repository available to colleagues by adding them as collaborators to the project.

2. Go to your new repository and copy the url (green button “Code”). You should have copied something like `https://github.com/yourGitHubName/yourRepoName.git`.
 
### Connecting your GitHub Repository to your RStudio project
3.	You can do this either in RStudio or in the terminal. When using RStudio, click on (```File/New Project..```) in the menu bar. Then select "from VersionControl" and "Git". Paste the copied URL and give the respository a name. This will connect your GitHub repository to your R project and allows version control.


**Note: From now on, everything described below will be executed in RStudio**

<a name="init_renv"></a>
## Initiating your R environment (Reproducibility feature)
`src/project_init.R` Run the script to initiate the R environment and connect it to the R Project. Consent with **yes** when asked.
  * From now, all of your used r packages and dependencies will now be recorded in the ```renv.loc``` file when you execute ```renv::snapshot()```.
  * It is recomended to always use ```ren::hydrate()``` when installing new packages to your project enviroment. It will retrive the packages if allready installed on your computer, or install it from the CRAN r repository if missing. The packages that don't exists on CRAN have to be installed as usuall with ```install.packages()```
## Create R markdowns from template (Reproducibility feature)
`src/template_markdown.Rmd` Creating markdowns from this template will give you several reproducibility friendly feature:
  * Automatic connection to your environment (renv)
  * Automatic report generation for your lab book
  * Automatic result organisation in date directories

### 1. Automatic connection to your environment (renv)
Changes in your environment, e.g. by installing new packages, have to be capture by executing `renv::snapshot()` inside your R markdown.

### 2. Automatic report generation for your lab book
When knitting your markdown, e.g. by clicking **knitr** button, the resulting html file will be saved under ```results/labbook/``` with the markdown-file-name and the date when you knitted it.
These reports can be append to your actual lab book or easily used to show and discuss results with your colleagues.
To create really nice markdown reports, please see inside the template and check the [R Markdown cheat sheet](https://github.com/rstudio/cheatsheets/raw/master/rmarkdown-2.0.pdf) or interactively [here](https://markdown-it.github.io/).


### 3. Automatic result organisation in date directories
In order to save your results, e.g. plots and data, in an organised way, you can specify the the path to inside your markdown to ```result.dir```. Doing so will save your results into the directory `results/date-of-analysis/`.

  **Note:** The working directory of your markdown is located in ```src/```. To direct results into the result directory you can use:
    `paste0("../",result.dir,"your_result.pdf")`.


<a name="thoughs-comments"></a>
## :thought_balloon: Thoughts and Comments
If you have any thoughts and comments, let us know!
