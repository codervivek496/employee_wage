#Welcome to Employee Wage Computation program on Master Branch

#! /bin/bash -x
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
r=$(( RANDOM%3 ));
case $r in
	1)
	echo "Employee is Part Time"
	empHrs=4;;
	2)
	echo "Employee is Full Time"
	empHrs=8;;
	*)
	echo "Employee is absent"
	empHrs=0;;
esac
salary=$(($empHrs*$empRatePerHr))
echo "Employee working hours is $empHrs"
echo "Employee salary is $salary"
