#!/bin/bash

swap() {
    local -n elements="$1"
    local a="$2"
    local b="$3"
    local temp="${elements[$a]}"
    elements[$a]="${elements[$b]}"
    elements[$b]="$temp"
}

bubble_sort() {
    local -n elements="$1"
    local end="$2"
    if ((end > 0)); then
        for ((i = 0; i < end; i++)); do
            if ((elements[i] > elements[i+1])); then
                swap "$1" "$i" "$((i+1))"
            fi
        done
        ((end--))
        bubble_sort "$1" "$end"
    fi
}

elements=(-1 -2 8 5 6 2 3 1 4)
bubble_sort "elements" $(( ${#elements[@]} - 1 ))
echo "${elements[@]}"
