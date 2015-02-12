##Notes - Tools

* I had already installed GitBash (from SWC), and R, Rstudio for @STAT545
* I did not have R in my path.  Two options
	* Add "export PATH = /Rloc:$PATH" to `.bash_profile`, adds to path for each session.
	* Go into Control Panel and add the location (permanently)
	* Use an alias "alias useR='/path/to/R'" for manual running on command line.  Not good for makefiles though.  
* Make.  Downloaded GNU, already have a version of make w/ Cygwin, also DL'd and installed Rtools.  Same solutions for adding to path as above, will probably go w/ the third.  
* Bug for make - apparently can't follow paths with spaces or parens in the `PATH` variable?  Hence the choice to use an alias.  
* Already had miktex/latex installed.  