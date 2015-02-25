## Notes - Reproducible Reports

###Key ideas

* use source to generate other formats.  
~~~
.tex, .rmd, (.md), .ascii 
-> knitr 
-> (.md), .html, .pdf
~~~
* In particular, `knitr` formats not only text, but runs code chunks.  Useful for 
reproducible research since the report is generated w/ the latest code.  
* Things you need installed: `rmarkdown` R package, `knitr` R package, `pandoc`

###"knitting" documents
* If in RStudio, just click the `knitr` button that looks like a ball of yarn
* On the command line: 
~~~
R -e "rmarkdown::render('knitr_example.Rmd')"
~~~
* When we "knit" documents, we're actually using the `rmarkdown` package, which then calls `knitr` (which then uses `pandoc`).  
* Knitr will generate all images/figures in a document and put them in an directory.  
* Specify output formatting in yaml header.  Can use markdown + inline R.  

###Code chunks
* Inline code indicated by backticks.  
* Code chunks indicated as follows:
~~~
```{r chunk-name}
x <- c(0,1,2)
```
~~~

* Chunk options: 

| Option			| What happens | 
| ----------------- | ------------ |
| `echo=FALSE` 		| Don't include the code |
| `results="hide"` 	| Don't include the output |
| `include=FALSE` 	| Don't show code or output |
| `eval=FALSE` 		| Don't evaluate the code at all |
| `warning=FALSE` 	| Don't show R warnings |
| `message=FALSE` 	| Don't show R messages |
| `fig.width=#` 	| Width of figure |
| `fig.height=#` 	| Height of figure |
| `fig.path="Figs/"` | Path for figure files |
* Can also indicate global options, basically a non-displayed `R` chunk that uses 
the following function: 
~~~
knitr::opts_chunk$set( list opts here)
~~~
May need to include `library(knitr)` in order to use that functionality.  

###Tips
* Include `devtools::session_info()` in a final chunk to list all the things you used.  
* Table options: `kable`, `pander`, `xtable`

###Links
http://kbroman.org/knitr_knutshell/
