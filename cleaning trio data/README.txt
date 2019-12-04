===================================

Reading the workflow:

===================================

Github cannot display the HTML cleaning workflow because
	1) the file is too large
	2) Biconductor HTML formatting is not supported. 

To read the workflow, download cleaning_workflow.html by:

1. Click "cleaning_workflow.html" above:
https://github.com/lindagai/workflows/blob/master/cleaning%20trio%20data/cleaning_workflow.html

2. Click on “Raw” on the top right of the gray box where the HTML code is displayed.

3. Download it by right clicking anywhere in the window and saving the HTML file.

4. Open the downloaded HTML file in your internet browser (e.g., Firefox, Google Chrome, Safari, Internet Explorer, etc.)

===================================

Editing the workflow:

===================================

If you want to edit this workflow on your own computer, you can run the .Rmd file. The .Rmd will run as long as:

1. You download the entire Github folder to your computer (it includes small example datasets).

2. You set the working directory at the beginning of the Markdown to wherever you put the “cleaning trio data folder on your computer:

```{r,echo=FALSE, message=FALSE, warning=FALSE}
knitr::opts_knit$set(root.dir = "/change this to wherever you downloaded this folder/cleaning trio data/")
```
