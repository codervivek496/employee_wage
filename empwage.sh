#Welcome to Employee Wage Computation program on Master Branch


isPartTime=1;
isFullTime=2;
totalsalary=0;
empRatePerHr=20;
numWorkingDays=20;

for (( day=1; day<=$numWorkingDays; day++ ))
do
	r=$(( RANDOM%3 ))
		case $r in
			1)
			empHrs=4;;
			2)
			empHrs=8;;
			*)
			empHrs=0;;
		esac
salary=$(( $empHrs*$empRatePerHr ))
totalSalary=$(( $totalSalary + $salary ))
done

echo $totalSalary
