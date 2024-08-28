
#!/bin/bash

# Pattern (i)
echo "Pattern (i):"
for ((i=1; i<=3; i++))
do
    for ((j=1; j<=i; j++))
    do
        echo -n "* "
    done
    echo ""
done

echo ""

# Pattern (ii)
echo "Pattern (ii):"
for ((i=1; i<=3; i++))
do
    for ((j=1; j<=3-i; j++))
    do
        echo -n "  "  # Print leading spaces
    done
    for ((j=1; j<=i; j++))
    do
        echo -n "* "
    done
    echo ""
done

echo ""

# Pattern (iii)
echo "Pattern (iii):"
for ((i=1; i<=3; i++))
do
    for ((j=1; j<=3-i; j++))
    do
        echo -n "  "  # Print leading spaces
    done
    for ((j=1; j<=2*i-1; j++))
    do
        echo -n "* "
    done
    echo ""
done

