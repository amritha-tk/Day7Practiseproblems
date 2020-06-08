


#!/bin/bash -x

for (( i=0 ; i<=100 ; i++ ))
do
a=`expr $i % 10`
b=`expr $i / 10`
  if [ $a -eq $b ] 
   then
    n[$i]=${arr[$i]}
     echo $n[$i]
fi
done
