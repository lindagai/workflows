This workflow will run as long as:

1. You download the entire Github folder to your computer (it includes small example datasets).

2. You set the working directory at the beginning of the Markdown to wherever you put the “trio analysis” folder on your computer:

```{r,echo=FALSE, message=FALSE, warning=FALSE}
knitr::opts_knit$set(root.dir = "/change this to wherever you downloaded this folder/cleaning workflow/")
```