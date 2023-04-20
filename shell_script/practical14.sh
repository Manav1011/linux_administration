read first
read second 
read third
max=false
(( first > second )) && (( first > third )) && max=$first || (( second > third )) && max=$second || max=$third
echo $max