#! /bin/bash
echo "enter the base of input number:"
read base1
echo "enter the base of output required:"
read base2
echo "Enter the number to be converted within the input range:"
read num
#base1 corresponding in words
if [ $base1 -eq 2 ]
then
baseword1=binary
elif [ $base1 -eq 8 ] 
then
baseword1=octal
elif [ $base1 -eq 10 ]
then
baseword1=decimal
elif [ $base1 -eq 16 ]
then
baseword1=hexadecimal
fi
#base2 corresponding in words
if [ $base2 -eq 2 ]
then
baseword2=binary
elif [ $base2 -eq 8 ] 
then
baseword2=octal
elif [ $base2 -eq 10 ]
then
baseword2=decimal
elif [ $base2 -eq 16 ]
then
baseword2=hexadecimal
fi

echo "$baseword2 value of the entered $baseword1 is:"
echo "obase=$base2;ibase=$base1;$num" |bc
