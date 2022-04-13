#Welcome to Employee Wage Computation program on Master Branch

#! /bin/bash -x
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
r=$(( RANDOM%3 ));
if [ $(( isPartTime )) -eq $r ];
then
	echo "Employee is Part Time";
	empHrs=4;
elif [ $(( $isFullTime )) -eq $r ];
then
	echo "Employee is Full Time"
	empHrs=8;
else
	echo "Employee is absent";
	empHrs=0;
fi
salary=$(($empHrs*$empRatePerHr))
echo "Employee working hours is $empHrs"
echo "Employee salary is $salary"
