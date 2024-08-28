echo "Enter 1st number"
read a
echo "Enter 2nd number"
read b
echo "Enter 3rd number"
read c
if [ $a -ge $b -a $a -ge $c ]
then
echo "$a is the greatest"
elif [ $b -ge $a -a $b -ge $c ]
then
echo "$b is the greatest"
else
echo "$c is the greatest"
fi


