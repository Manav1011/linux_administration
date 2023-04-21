# Write a shell script to generate mark sheet of a
# student. Take 3 subjects, calculate and display total
# marks, percentage and Class obtained by the
# student.
mark1=15;
mark2=25;
mark3=30;

sum=$(($mark1 + $mark2 + $mark3));
echo "Total marks: $sum";

per=$(( ($sum*100) / 90 ));
echo "Percentage: $per%";

if [[ $per -gt 80 ]] ;then
    echo "Grade: A";
elif [[ $per -gt 60 && $per -le 80 ]] ;then
    echo "Grade: B";
elif [[ $per -gt 35 && $per -le 60 ]] ;then
    echo "Grade: C";
else
    echo "Grade: Failed!";
fi