#!/bin/bash

for i in {2..9}
do
	for ((j=1; j< 10; j++))
	do
		((result = i*j))
		 echo $result
	 done
	 echo ""
 done

