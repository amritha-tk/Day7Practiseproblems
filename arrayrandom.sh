


#!/bin/bash -x

for(( i=0; i<$1; i++ ))
do
 Arr[$i]=$(( RANDOM%899+100 ))
done


echo ${Arr[@]}


#to print  second largest
first=${Arr[0]};
second=${Arr[0]};

for (( i=1; i<=${#Arr[@]}; i++ ))
  do
   if [[ $first -lt ${Arr[$i]} ]]
    then
     second=$(($first))
     first=${Arr[$i]}
   elif [[ ${Arr[$i]} -gt $second ]] &&  [[ ${Arr[$i]} -ne $first ]]
   then
   second=${Arr[$i]}
  fi
  if [[ $second -eq $first ]]
   then
    echo "No second largest"
    else
    echo "Second largest is" $second
  fi
done

#to print second smallest

for (( i=1; i<=${#Arr[@]}; i++ ))
  do
   if [[ $first -gt ${Arr[$i]} ]]
    then
    second=$first
    first=${Arr[$i]}
   elif [[ ${Arr[$i]} -lt $second ]] && [[ ${Arr[$i]} -ne $first ]]
   then
   second=${Arr[$i]}
  fi
  if [[ $second -eq $first ]]
   then
    echo "No second smallest"
    else
    echo "Second smallest is" $second
  fi
done
