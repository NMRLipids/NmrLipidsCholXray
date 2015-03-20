#!/bin/bash
trajgroname=POPC_20CHLrun.gro
for((  j = 3 ;  j <= 18;  j=j+1  ))
do
Cname=$(grep M_G2C"$j"_M ../../MAPPING/mappingPOPCcharmm.txt | awk '{printf "%5s\n",$2}')
H1name=$(grep M_G2C"$j"H1_M ../../MAPPING/mappingPOPCcharmm.txt | awk '{printf "%5s\n",$2}')
H2name=$(grep M_G2C"$j"H2_M ../../MAPPING/mappingPOPCcharmm.txt | awk '{printf "%5s\n",$2}')
H1op=$(awk -v Cname="$Cname" -v Hname="$H1name" -f ../../scripts/gro_OP.awk $trajgroname)
H2op=$(awk -v Cname="$Cname" -v Hname="$H2name" -f ../../scripts/gro_OP.awk $trajgroname)
echo $j $H1op $H2op
done