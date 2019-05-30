#!/bin/bash

#10 is the number of replicates at each value of K.
for i in {1..20} 
do
   for j in {1..20}
   do 
	./structure -K $i -i Dengue990_PI-Numerical_4463si.tsv -m mainparams -e extraparams -o results/outfile_k_${i}_rep_${j}
   done

done
