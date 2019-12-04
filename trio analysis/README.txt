===================================

Reading the workflow:

===================================

Github cannot display the HTML workflow because
	1) the file is too large
	2) Biconductor HTML formatting is not supported. 

To read the workflow, download trio_analysis_workflow.html by:

1. Click "trio_analysis_workflow.html" above:
https://github.com/lindagai/workflows/blob/master/trio%20analysis/trio_analysis_workflow.html

2. Click on “Raw” on the top right of the gray box where the HTML code is displayed.

3. Download it by right clicking anywhere in the window and saving the HTML file.

4. Open the downloaded HTML file in your internet browser (e.g., Firefox, Google Chrome, Safari, Internet Explorer, etc.)

===================================

Editing the workflow:

===================================

If you want to edit this workflow on your own computer, you can run the .Rmd file. The .Rmd will run as long as:

0. You are using Linux/Max OS X (RV-TDT does not work on Windows).

1. You download the entire trio_analysis_workflow Github folder to your computer (it includes small example datasets).

2. You set the working directory at the beginning of the Markdown to wherever you put the “trio_analysis_workflow” folder on your computer:

```{r,echo=FALSE, message=FALSE, warning=FALSE}
knitr::opts_knit$set(root.dir = "/change this to wherever you downloaded this folder/trio analysis/")
```

3. You’ve 

(a) downloaded RV-TDT from this website: https://github.com/statgenetics/rv-tdt

(b) the correct `filepath.RV_TDT` is added to the .Rmd.

######################################################

NOTES:

######################################################

(1) The .Rmd takes a fairly long time to knit (~ 5 min).

(2) Be aware that you can't overwrite existing VCF files using writeVcf() (i.e., if code chunks that overwrote existing VCF files weren't commented out, you'd get an error if you tried knitting the .Rmd more than one time). Some code chunks are commented out with eval=FALSE for this reason.

If you want to re-run the .Rmd and evaluate those code chunks (e.g., to examine the VCF files at different stages of analysis), just comment them back in. You will have to either delete the new files or comment the code chunks back out to make the .Rmd knit after that, though.