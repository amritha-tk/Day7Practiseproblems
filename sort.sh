

#!/bin/bash -x


a=$(( $RANDOM%30 ))
b=$(( $RANDOM%2 ))
c=$(( $RANDOM%20 ))
d=$(( $RANDOM%3 ))
e=$(( $RANDOM%2 ))

Arr[((0))]=$a
Arr[((1))]=$b
Arr[((2))]=$c
Arr[((3))]=$d
Arr[((4))]=$e

echo ${Arr[@]}

for (( i=0; i<${#Arr[@]}; i++ ))
 do
 for(( j=i+1; j<${#Arr[@]}; j++ ))
  do
  if [ ${Arr[i]} -gt ${Arr[j]} ]
     then
         temp=${Arr[i]}
         ${Arr[i]}=${Arr[j]}
         ${Arr[j]}=temp
   fi

 echo "Second largest" ${Arr[4]}
done
done
