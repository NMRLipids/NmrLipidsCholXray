#!/bin/bash
wget https://zenodo.org/record/14067/files/POPC_20CHL.tpr
wget https://zenodo.org/record/14067/files/POPC_20CHL.xtc
tprname=POPC_20CHL.tpr
trajname=POPC_20CHL.xtc
trajgroname=POPC_20CHLrun.gro
echo System | trjconv -f $trajname -s $tprname -o $trajgroname -pbc res -b 100000
for((  j = 3 ;  j <= 16;  j=j+1  ))
do
Cname=$(grep M_G1C"$j"_M ../../MAPPING/mappingPOPCcharmm.txt | awk '{printf "%5s\n",$2}')
H1name=$(grep M_G1C"$j"H1_M ../../MAPPING/mappingPOPCcharmm.txt | awk '{printf "%5s\n",$2}')
H2name=$(grep M_G1C"$j"H2_M ../../MAPPING/mappingPOPCcharmm.txt | awk '{printf "%5s\n",$2}')
H1op=$(awk -v Cname="$Cname" -v Hname="$H1name" -f ../../scripts/gro_OP.awk $trajgroname)
H2op=$(awk -v Cname="$Cname" -v Hname="$H2name" -f ../../scripts/gro_OP.awk $trajgroname)
echo $j $H1op $H2op
done