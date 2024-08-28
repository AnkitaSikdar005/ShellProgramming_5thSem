
echo "Enter 1st number"
read a
echo "Enter 2nd number"
read b
echo "Enter 3rd number"
read c
if [ $a -ge $b -a $a -le $c -o  $a -le $b -a $a -ge $c ]
then
echo "$a is the 2nd highest"
elif [ $b -ge $a -a $b -le $c -o $b -le $a -a $b -ge $c ]
then
echo "$b is the 2nd highest"
else
echo "$c is the 2nd highest"
fi


