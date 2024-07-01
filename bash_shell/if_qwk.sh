#!/bin/bash

awk '{
	if($2 > 1000) 
		{
			print " Name :", $1," and department :" ,$2 ,"your salary is grether than ",$3
	}

	else 
		{
			print " Name :", $1," and department :" ,$2 ,"your salary is not grether than ",$3
	}

}' data.txt


