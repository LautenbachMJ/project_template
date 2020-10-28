# Project template to start a new computational project
### developed for R but can be adapted freely

## Table of contents
* [General info](#general-info)
* [Repo description](#repo-description)
* [Getting started](#getting-started)
* [Initiating your R environment (Reproducibility feature)](#Initiating-your-R-environment-(Reproducibility-feature))
* [Create R markdowns from template (Reproducibility feature)](#Create R markdowns from template (Reproducibility feature))
* [Thoughts and Comments](#Thoughts and Comments)

## General info
This study includes
- This repository contains the code data for...

## Repo description
- ```src/project_init.R``` used to initiate and create a R environment for reproducibility reasons and to track package dependencies

## Getting started :technologist:

### Creating a repository from a project template
1.	Create a new GitHub repository based in [this template](https://github.com/LautenbachMJ/project_template)
* Enter a name for your new project repository (choose a clear/smart name and avoid special characters, e.g. covid19_study
* Set it to private if you want (otherwise everyone can see your code)

2. Go to your new GitHub repository and copy the url (green button “Code”)
  2.1 You should have copied something like `https://github.com/yourGitHubName/yourRepoName.git`
 
### Connecting your GitHub Repository to your RStudio project
3.	Open RStudio and create a new project from VersionControl (your GitHub repository) by following that path:

File-> new project -> Version Control, Checkout a project from a version control repository -> Git, Cone a project from a Git repository
4.	Paste Repository URL: https://github.com/yourGitHubName/yourRepoName.git
5.	Change the path to the place where you want to save your project
6.	Your project is is now connected to your GitHub account and can be used for version control.

**Note: From now on, everything described below will be executed in RStudio**

## Initiating your R environment (Reproducibility feature)
- ```src/project_init.R``` Run the script to initiate the R environment and connect it to the RProject. Consent with “yes” when asked.
- Now, all of your used r packages and dependencies will now be recorded by executing ```renv::snapshot()```

## Create R markdowns from template (Reproducibility feature)
- ```src/template_markdown.Rmd``` Creating markdowns from this template will give you several reproducibility friendly feature:
* 1. Automatic connection to your environment (renv)
* 2. Automatic report generation for your lab book
* 3. Automatic result organisation in date directories

### 1. Automatic connection to your environment (renv)
Changes in your environment, e.g. by installing new packages, have to be capture by executing `renv::snapshot()` inside your R markdown.

### 2. Automatic report generation for your lab book
When knitting your markdown, e.g. by clicking “knitr” button, the resulting html file will be saved under ```results/labbook/``` with the markdown-file-name and the date when you knitted it. These reports can be append to your actual lab book or easily used to show and discuss results with your colleagues.
To create really nice markdown reports, please see inside the template and check the [R Markdown cheat sheet](https://github.com/rstudio/cheatsheets/raw/master/rmarkdown-2.0.pdf)

### 3. Automatic result organisation in date directories
In order to save your results, e.g. plots and data, in an organised way, you can specify the the path to inside your markdown to `result.dir . Doing so will save your results into the directory `results/date-of-analysis/`.
Note: the working directory of your markdown is located in ```src/```. To direct results into the result directory you can use `paste0("../",result.dir,"YOURRESULTTOSAVE.pdf")`


```javascript
if (isAwesome){
  return true
}
```

## :thought_balloon: Thoughts and Comments
Please create an Issue or write Julius an email or a message to @LautenbachMJ.
