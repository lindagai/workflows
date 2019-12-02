This workflow will run as long as:

0. You are using Linux/Max OS X (RV-TDT does not work on Windows).

1. You download the entire Github folder to your computer (it includes small example datasets).

2. You set the working directory at the beginning of the Markdown to wherever you put the “trio analysis” folder on your computer:

```{r,echo=FALSE, message=FALSE, warning=FALSE}
knitr::opts_knit$set(root.dir = "/change this to wherever you downloaded this folder/trio analysis/")
```

3. You’ve 

(a) downloaded RV-TDT from this website: https://github.com/statgenetics/rv-tdt

(b) the correct `filepath.RV_TDT` is added to the .Rmd.