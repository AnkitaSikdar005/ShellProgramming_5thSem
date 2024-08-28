echo "Enter a number"
read a
if [ `expr $a % 2` -eq 0 ]
then
echo "$a is a even number"
else
echo "$a is  a odd number"
fi


