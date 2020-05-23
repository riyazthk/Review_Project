#! /bin/bash 
read -p "enter a number :" a
#variables
j=0
k=0
l=0
sum=0
sum1=0

#calculate odd numbers
function odd (){
      local num=$1
      echo $(( $num ))
      }

#calculate even numbers
function even (){
     local num=$1
     echo $(( $num ))
}

#calculate prime numbers
function prime (){
     local num=$1
     echo $(( $num ))
}


   for (( i=2;$i<$a;i++ ))
   do
     # To check out a value whether a number is odd or even
     # if number is odd to call odd function
     # if number is even to call even function
     if [[ $i%2 -eq 0 ]]
      then
         even[(k++)]=$(even $i)
         sum1=$(($sum1 + $i))
      else
         odd[(j++)]=$(odd $i)
          sum=$(($sum + $i))
      fi
      # to find out a prime value 
      # if value from 2,3,5 it can execute prime function
      if [[ ($i -eq 2 || $i -eq 3 || $i -eq 5) ]]
      then
           prime[(l++)]=$(prime $i)
           sum3=$(($sum3 + $i))
       # to check a value mod of 2,3,5 is equal to zero to continue a statement    
      elif [[ $i%2 -eq 0 || $i%3 -eq 0 || $i%5 -eq 0 ]]
      then
            continue
       # to check if prime * prime = composite number so to check a number if it is composite means break it 
       # otherwise call prime function statement 
      elif  [[ $i -gt 0 ]]
      then
          var=$(($a / 5))
             for ((m=1;$m<$var;m++))
             do
                va=$(($m * $m))
                    if [[ $va -eq $a ]];
                    then
                       break;
                      else
                          prime[(l++)]=$(prime $i)
                          sum3=$(($sum3 + $i))
                          break;
                     fi
             done
      fi

   done
# To find out a average of odd, even and prime numbers  
averageodd=$(( $sum / $j ))
averageeven=$(( $sum1 / $k ))
averageprime=$(( $sum3 / $l ))
#printing statement
echo "print odd numbers ${odd[@]}"
echo "average value of odd number $averageodd"
echo "print even numbers ${even[@]}"
echo "average value of $averageeven"
echo "print prime numbers ${prime[@]}"
echo "average value of ${averageprime}"
