#!/bin/bash

#tprname=step7_10.tpr
#trajname=${tprname%7_10.tpr}8_1.dcd
trajname=traj_openMM.dcd
trajgroname=${trajname%.dcd}_run.gro
#gromacs_folder_prefix="../gromacs"
sn1outname=OrderParamSN1_sim1_200ns_openMM.dat
sn2outname=OrderParamSN2_sim1_200ns_openMM.dat

# workaround with tpr file from gromacs simulation (which should match exactly)
#python convert_dcd_to_gro.py
#echo System | gmx trjconv -f $trajname -o $trajgroname #-s $gromacs_folder_prefix/$tprname # -pbc res   #-b 100000 

script_folder="../../.."

# sn-1
for((  j = 3 ;  j <= 16;  j=j+1  ))
do
Cname=$(grep M_G1C"$j"_M ${script_folder}/MAPPING/mappingPOPCcharmm.txt | awk '{printf "%5s\n",$2}')
H1name=$(grep M_G1C"$j"H1_M ${script_folder}/MAPPING/mappingPOPCcharmm.txt | awk '{printf "%5s\n",$2}')
H2name=$(grep M_G1C"$j"H2_M ${script_folder}/MAPPING/mappingPOPCcharmm.txt | awk '{printf "%5s\n",$2}')
H1op=$(awk -v Cname="$Cname" -v Hname="$H1name" -f ${script_folder}/scripts/gro_OP.awk $trajgroname)
H2op=$(awk -v Cname="$Cname" -v Hname="$H2name" -f ${script_folder}/scripts/gro_OP.awk $trajgroname)
echo $j $H1op $H2op >> $sn1outname 
done

# sn-2
for((  j = 3 ;  j <= 18;  j=j+1  ))
do
Cname=$(grep M_G2C"$j"_M ${script_folder}/MAPPING/mappingPOPCcharmm.txt | awk '{printf "%5s\n",$2}')
H1name=$(grep M_G2C"$j"H1_M ${script_folder}/MAPPING/mappingPOPCcharmm.txt | awk '{printf "%5s\n",$2}')
H2name=$(grep M_G2C"$j"H2_M ${script_folder}/MAPPING/mappingPOPCcharmm.txt | awk '{printf "%5s\n",$2}')
H1op=$(awk -v Cname="$Cname" -v Hname="$H1name" -f ${script_folder}/scripts/gro_OP.awk $trajgroname)
H2op=$(awk -v Cname="$Cname" -v Hname="$H2name" -f ${script_folder}/scripts/gro_OP.awk $trajgroname)
echo $j $H1op $H2op >> $sn2outname
done
