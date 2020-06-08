

#!/bin/bash -x
arr=( 1 7 -1 0 2 )
n=5
sum=0

echo ${arr[@]}

for (( i=0; i<n-2; i++ ))
 do
  for (( j=i+1; j<n-1; j++ ))
   do
    for(( k=j+1; k<n; k++ ))
     do
        sum=$(${arr[i]}+${arr[j]}+${arr[k]})
        if [ $sum -eq 0 ]
          then
           echo "Numbers are " ${arr[i]} ${arr[j]} ${arr[k]}
         fi
done
done
done
