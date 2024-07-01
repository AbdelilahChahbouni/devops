#!/bin/bash


awk '{

	for(i = 1 ; i <= NF ; i++){
	
		{
			if(i == 3)
				{
			
				sum += $i
			
			}
		
		}
	
	
	}





}END{ print "sum of salries ", sum}
' data.txt
