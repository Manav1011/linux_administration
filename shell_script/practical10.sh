read n
fib(){
    if [[ $1 -le 1 ]];then
        echo $1
    else
        echo $(($(fib $(($1-1))) + $(fib $(($1-2)))))
    fi
}

for ((i=0;i<=n;i++));do
    fib $i
done