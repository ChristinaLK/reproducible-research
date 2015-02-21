##Notes - Command Line and Editor

###Commands

* `curl`
	* used to get data from a server (or send to a server).  Sort of like `scp` but more flexible?  
	* most options seem to depend on the kind of transfer (http, ftp, etc.)
	* the `-O` option we used takes the name of the url and downloads the data to a file of that name.  
	* http://www.computerhope.com/unix/curl.htm
* `unzip`
	* `-t` option tests files before unzipping
	* `-d` and name will extract to named directory.  Can go before/after zipped file.  
	* http://linux.about.com/od/commands/l/blcmdl1_unzip.htm

Running the included `download_names.sh` script will download and unzip a file of baby names into a `names/` directory.  
	
###Analyzing Files
	
* To count the number of `.txt` files in the `names/` directory, I used `ls` to list directory contents, and then piped it to `wc` to count the number of lines: 
~~~
ls -l names/*.txt | wc -l
~~~
* Running `wc` on all the text files will produce a total at the end, which can be extracted by piping to `tail`:
~~~
wc -l names/*.txt | tail -1
~~~
* Using `grep` across all the files will return all the lines with the pattern "Pat" somewhere in the list of names.  Again, piping that list to `wc` will give me the total number of lines: 
~~~
grep "Pat" names/*.txt | wc -l
~~~
* To find the number of male names with "Pat", I simply add an additional `grep` command searching for the letter "M":
~~~
grep "Pat" names/*.txt | grep "M" | wc -l
~~~
And same for the women.  

Running the included `counting_script.sh` from this directory will produce the above results.  

