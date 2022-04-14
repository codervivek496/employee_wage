#Welcome to Employee Wage Computation program on Master Branch


isPartTime=1;
isFullTime=2;
maxHrsMonth=100;
empRatePerHr=20;
numWorkingDays=20;

totalEmpHr=0;
totalWorkingDays=0;

while [ $((totalEmpHrs)) -lt $((maxHrsMonth)) ] && [ $((totalWorkingDays)) -lt $((numWorkingDays)) ]
do
	((totalWorkingDays++))
	r=$(( RANDOM%3 ))
		case $r in
			1)
			empHrs=4;;
			2)
			empHrs=8;;
			*)
			empHrs=0;;
		esac
		totalEmpHrs=$(( $totalEmpHrs + $empHrs ))
done

		totalSalary=$(( $totalEmpHrs + $empRatePerHr ))
		echo $totalSalary
