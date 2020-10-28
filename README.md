# Project template to start a new computational project
### developed for R but can be adapted freely

## Table of contents
* [General info](#general-info)
* [Repo description](#repo-description)
* [Getting started](#getting-started)

## General info
This study includes
- This repository contains the code data for...

## Repo description
- ```src/project_init.R``` used to initiate and create a R environment for reproducibility reasons and to track package dependencies

## Getting started :technologist:

### Creating a repository from a project template
1.	Create a new GitHub repository based in this template [Caption](https://github.com/LautenbachMJ/project_template)
  1.1 Enter a name for your new project repository (choose a clear/smart name and avoid special characters, e.g. covid19_study
  1.2 Set it to private if you want (otherwise everyone can see your code)
2. Go to your new GitHub repository and copy the url (green button “Code”)
  2.1 You should have copied something like https://github.com/yourGitHubName/yourRepoName.git
 
### Connecting your GitHub Repository to your RStudio project
3.	Open RStudio and create a new project from VersionControl (your GitHub repository) by following that path:

File-> new project -> Version Control, Checkout a project from a version control repository -> Git, Cone a project from a Git repository
4.	Paste Repository URL: https://github.com/yourGitHubName/yourRepoName.git
5.	Change the path to the place where you want to save your project
6.	Your project is is now connected to your GitHub account and can be used for version control.

Note: From now on, everything described below will be executed in RStudio

### Initiating your R environment (Reproducibility feature)
1.	On the panel with files, go to src/ and open “project_init.R” and run the the code.
2.	Consent with “yes” when asked
3.	All of your used r packages and dependencies will now be recorded.

Creating a Rmarkdown from a template file to write your code (Reproducibility feature)
4.	Open “template_markdown.Rmd” in the src/ directory and go to File-> Save as…
5.	Save the markdown file with a name of your choice
6.	Note: name it with a clear name of the purpose of your script
7.	Within the markdown, adjust title, author (your name), project abstract or script purpose.
8.	Now you can install all needed libraries and process/wrangle/analyse/visualize your data.
9.	Note: save results to the result path, named “result.dir”. Your results will be saved in results/date-of-analysis/

Capturing a snapshot of all used packages and their dependencies (Reproducibility feature)
1.	Execute the chunk “r renv_snap”
2.	Give consent when asked


Knitting your Rmarkdown for your lab journal (Reproducibility feature)
In the end of the day, run the entire markdown by clicking “knitr” button to save a html file that contains code, data structure and output to append to your ELIN lab book.
You will find the knitted html file in results/labbook with the name of the Rmarkdown you run plus the date when you ran it.


```javascript
if (isAwesome){
  return true
}
```

## :thought_balloon: Thoughts and Comments
Please create an Issue or write Julius an email.
