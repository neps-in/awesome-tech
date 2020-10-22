#!/bin/bash

usage(){
    echo "create-toc.sh outfilename.md"
}


echo '1st param'
echo $1
dir=$1
arr=$(ls *.md)

outfile=$1
# iterate through array using a counter
for ((i=0; i<${#arr[@]}; i++)); do
    #do something to each element of array
    # echo "${arr[i]}"
    # echo '*' >> ${outfile}
    # echo " ******* [ ${arr[$i]} ]" >> ${outfile}
    # echo " (${arr[$i]}) " > ${outfile}

    echo ' ---------> '
    echo " [ ${arr[$i]} ]" 
    echo " ( ${arr[$i]} ) " 


done


# for f in "${arr[@]}"; do
#    echo "$f" >> ${outfile}
# done