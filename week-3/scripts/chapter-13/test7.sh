#!/bin/bash
# iterating through multiple directories
for file in /home/irfo/.b* /home/irfo/badtest
do


if [ -d "$file" ]	        
 then			       
		echo "$file is a directory"			                
				elif [ -f "$file" ]			        
    then  				
	 echo "$file is a file"						    			                                                       
		   else											     
				 echo "$file doesn't exist"
	 fi																	       			
	done