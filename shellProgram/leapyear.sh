
echo "Enter the year"
read a
if [ `expr $a % 4` -eq 0 -o $(($a % 400)) -eq 0 -a $(($a % 100)) -ne 0 ]
then
echo "$a is a leap year"
else
echo "$a is not a leapyear"
fi

