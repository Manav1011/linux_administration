#!/usr/bin/awk -f

function to_uppercase(str) {
    return toupper(str)
}

{
    for (i = 1; i <= NF; i++) {
        $i = to_uppercase($i)
    }
    print
}
