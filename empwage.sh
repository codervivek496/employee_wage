#Welcome to Employee Wage Computation program on Master Branch


isPartTime=1;
isFullTime=2;
maxHrsMonth=100;
empRatePerHr=20;
numWorkingDays=20;

totalWorkingHr=0;
totalWorkingDays=0;

declare -A dailyWage;

function calculateWorkingHour() {
	case $1 in
		1)
		workingHrs=4;;
		2)
		workingHrs=8;;
		*)
		workingHrs=0;;
	esac
	echo $workingHrs;
}
function getEmpWage() {
	local workingHrs=$1
	wage=$(( $workingHrs * $((EmpRatePerHr)) ))
	echo $wage
}
while [ $((totalWorkingHr)) -lt $((maxHrsMonth)) ] && [ $((totalWorkingDays)) -lt $((numWorkingDays)) ]
do
	((totalworkingDays++))
	workingHrs=$( calculateWorkingHour $((RANDOM%3)) )
	totalWorkingHr=$((totalWorkingHr + $workingHrs));
	dailyWage["$totalWorkingDays"]="$( getEmpWage $workingHrs )"
done

totalSalary=$(( $totalWorkingHr + $empRatePerHr ))
	echo "total salary is " $totalSalary
	echo  "Daily wage is "  ${dailyWage[@]}

