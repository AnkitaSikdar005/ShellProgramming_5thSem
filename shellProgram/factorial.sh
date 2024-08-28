echo "Enter a number:"
read num

factorial_for=1

for (( i=1; i<=num; i++ ))
do
  factorial_for=$((factorial_for * i))
done

echo "Factorial of $num using for loop is $factorial_for"

factorial_while=1
i=1

while [ $i -le $num ]
do
  factorial_while=$((factorial_while * i))
  i=$((i + 1))
done

echo "Factorial of $num using while loop is $factorial_while"

