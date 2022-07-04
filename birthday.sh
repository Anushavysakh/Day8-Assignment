2) Write a Program to generate a birth month of 50 individuals between the
year 92 & 93. Find all the individuals having birthdays in the same month.
Store it to finally print.

individuals=50
declare -A birthday
echo "The birthday month and year of $no_of_individuals individuals are: "
for(( i = 1; i <= individuals; i++ ))
do
    (( bmonth = RANDOM % 12 + 1 ))
    (( byear = RANDOM % 2 + 92 ))
    echo "individual $i has birthday in month $bmonth year $byear "

    birthday[$bmonth]+=" ${i}"
done

for month in ${!birthday[@]}
do
    echo "The individuals who are having birthday in month $month are: "
    for i in ${birthday[$month]}
    do
        echo -n "$i ";
    done
    echo
done
