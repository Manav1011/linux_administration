# Write a shell script to display multiplication table
# of given number.

read n;

for ((i=1;i<=10;i++)); do
    echo "$n * $i = $(($n*$i))";
done