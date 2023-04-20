string="tat"
for (( i=${#string}-1; i>=0; i-- )); do
    reverse="$reverse${string:$i:1}"
done
if [[ $string == $reverse ]]; then
    echo "The entered string is a palindrome."
else
    echo "The entered string is not a palindrome."
fi