#Welcome to Employee Wage Computation program on Master Branch


isPartTime=1;
isFullTime=2;
maxHrsMonth=100;
empRatePerHr=20;
numWorkingDays=20;

totalWorkingHr=0;
totalWorkingDays=0;

function calculateWorkingHour() {
	case $1 in
		1)
		workingHrs=4;;
		2)
		workingHrs=8;;
		*)
		empHrs=0;;
	esac
	echo $workingHrs;
}
while [ $((totalWorkingHr)) -lt $((maxHrsMonth)) ] && [ $((totalWorkingDays)) -lt $((numWorkingDays)) ]
do
	((totalworkingDays++))
	workingHrs=$( calculateWorkingHour $((RANDOM%3)) )
	totalWorkingHr=$((totalWorkingHr + $workingHrs));
done

totalSalary=$(( $totalWorkingHr + $empRatePerHr ))
		echo $totalSalary
