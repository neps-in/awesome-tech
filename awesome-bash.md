# Collection of Handy bash snippets

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

