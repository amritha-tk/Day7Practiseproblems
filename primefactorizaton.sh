# script to find prime factors

echo "enter an integer:"

read input

if [ $input -lt 1 ];then

echo "not allowed!"

exit 1

fi

# find factors and prime


i=2

count=0

flag=0

index=0

for ((i;i<$input;i++));do


  if [ `expr $input % $i` -eq 0 ];then

      factor=$i

#check if number is prime or not

  for ((j=2;j<=`expr $factor / 2`;));do

      flag=0

      if [ `expr $factor % $j` -eq 0 ];then

      flag=1

      break

      fi

      j=`expr $j + 1`

  done

   if [ $flag -eq 0 ];then

 #   echo "[ $factor ]"

    array[index++]=$factor

    count=1

   fi

  fi

#  i=`expr $i + 1`

  done


  if [ $count -eq 0 ];then

#  echo "no prime factors found except 1 and $input"

  array[index++]=1

  array[index++]=$input

  fi

echo "Prime factors are: ${array[@]}"