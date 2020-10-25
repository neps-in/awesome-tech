# Collection of Handy bash snippets

### Bash Resources

* [Style Guide](https://google.github.io/styleguide/shellguide.html)
* [Greg's wiki for shell scripting](https://mywiki.wooledge.org/)
* [Greg's Wiki: Bash Guide](https://mywiki.wooledge.org/BashGuide)
* [Greg's Wiki: Bash BashFAQ](https://mywiki.wooledge.org/BashFAQ)
* [Greg's Wiki: Bash Pitfalls](https://mywiki.wooledge.org/BashPitfalls)
* [Learn Enough Command Line to Be Dangerous](https://www.learnenough.com/command-line-tutorial/basics)
* [Bash Guide](https://github.com/Idnan/bash-guide)

### Nice utilities
* [Easy file sharing from the command line.](https://transfer.sh/)

### To find zero length files in bash

`find . -size 0`

### To list files in the order by filesize

`ls -lSr`

### echo without newline

`echo -n 'whatever you want'`

### read line by line in a file in bash shell script

```
#!/bin/bash
input="/path/to/txt/file"
while IFS= read -r line
do
  echo "$line"
done < "$input"
```

# Curl

Curl Syntax :

```
    curl [options] [URL...]
```


* ` -I ` or `--head`  - To make head request for url.

Fetch the HTTP-header only! HTTP-servers feature the command HEAD which this uses to get nothing but the header of a document. When used on a FTP or FILE file, curl  displays the file size and last modification time only

*  ` -L ` or `--location` - To follow redirect. 

*  `-I` or `--silent` - To avoid lots of output, this displays just the critical output.




