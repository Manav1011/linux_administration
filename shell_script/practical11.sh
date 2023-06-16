#!/bin/bash

# Bubble Sort function
bubble_sort() {
    local -n arr="$1"
    local n=${#arr[@]}
    local swapped

    for ((i = 0; i < n-1; i++)); do
        swapped=false

        for ((j = 0; j < n-i-1; j++)); do
            if ((arr[j] < arr[j+1])); then
                # Swap elements
                local temp=${arr[j]}
                arr[j]=${arr[j+1]}
                arr[j+1]=$temp
                swapped=true
            fi
        done

        # If no elements were swapped in the inner loop, the array is already sorted
        if [[ "$swapped" = false ]]; then
            break
        fi
    done
}

# Example usage
elements=(-1 -2 8 5 6 2 3 1 4)
bubble_sort elements

echo "Sorted elements: ${elements[@]}"