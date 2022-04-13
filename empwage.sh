#Welcome to Employee Wage Computation program on Master Branch

#! /bin/bash -x
present=1;
r=$(( RANDOM%2 ));
if [ $(( pesent )) -eq $r ];
then
	echo "Employee is present";
	empRatePerHr=20;
	empHrs=8;
	salary=$(($empHrs*$empRatePerHr))
else
	echo "Employee is absent";
	salary=0;
fi
