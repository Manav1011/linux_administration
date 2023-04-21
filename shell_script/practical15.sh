read -p "Enter the number you want to convert: " n

dec_to_binary () {
    local n=$1
    local binary_num=''
    while [ $n -gt 0 ]
    do
        remainder=$(( n % 2 ))
        binary_num="$binary_num$remainder"
        n=$(( n / 2 ))
    done
    echo $binary_num | rev
}

dec_to_hexa () {
    local n=$1
    local hex_dict=( [10]='A' [11]='B' [12]='C' [13]='D' [14]='E' [15]='F' )
    local hex_num=''
    while [ $n -gt 0 ]
    do
        remainder=$(( n % 16 ))
        if [[ ${hex_dict[$remainder]+_} ]]; then
            hex_num="${hex_dict[$remainder]}$hex_num"
        else
            hex_num="$remainder$hex_num"
        fi
        n=$(( n / 16 ))
    done
    echo $hex_num
}

dec_to_octal () {
    local n=$1
    local oct_num=''
    while [ $n -gt 0 ]
    do
        remainder=$(( n % 8 ))
        oct_num="$oct_num$remainder"
        n=$(( n / 8 ))
    done
    echo $oct_num | rev
}

echo "The binary equivalent of $n is $(dec_to_binary $n)"
echo "The octal equivalent of $n is $(dec_to_octal $n)"
echo "The hexadecimal equivalent of $n is $(dec_to_hexa $n)"
