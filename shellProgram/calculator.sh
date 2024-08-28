echo "Enter first number:"
read a
echo "Enter second number:"
read b
echo "Enter 1 for addition"
echo "Enter 2 subtraction"
echo "Enter 3 Multiplication"
echo "Enter 4 Division"
echo "Enter 5 for exit"


while [ 1 ]
do
echo "Enter the choice:"	
read choice
case $choice in
1)
sum=$(($a + $b))
echo "The sum is :$sum"
;;
2)
sub=$(($a - $b))
echo "The sum is :$sub"
;;
3)	
mul=$(($a * $b))
echo "The sum is :$mul"
;;
4)	
div=$(($a / $b))
echo "The sum is :$div"
;;
5)
echo "Exiting..."
exit
;;
*)
echo "Invalid $choice "
;;	       
esac
done
