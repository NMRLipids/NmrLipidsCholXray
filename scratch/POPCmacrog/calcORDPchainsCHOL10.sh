#!/bin/bash
wget https://zenodo.org/record/13877/files/md_chol10.tpr
wget https://zenodo.org/record/13877/files/md_chol10.xtc
tprname=md_chol10.tpr
trajname=md_chol10.xtc
mappingFILE=../../MAPPING/mappingPOPCmacrog.txt
trajgroname=analTMP10.gro
sn1outname=OrderParamSN1chol10.dat
sn2outname=OrderParamSN2chol10.dat
echo System | /home/ollilas1/gromacs/gromacs465/bin/trjconv -f $trajname -s $tprname -o $trajgroname -pbc res -b 100000
for((  j = 3 ;  j <= 16;  j=j+1  ))
do
Cname=$(grep M_G1C"$j"_M $mappingFILE | awk '{printf "%5s\n",$2}')
H1name=$(grep M_G1C"$j"H1_M $mappingFILE | awk '{printf "%5s\n",$2}')
H2name=$(grep M_G1C"$j"H2_M $mappingFILE | awk '{printf "%5s\n",$2}')
H1op=$(awk -v Cname="$Cname" -v Hname="$H1name" -f ../../scripts/gro_OP.awk $trajgroname)
H2op=$(awk -v Cname="$Cname" -v Hname="$H2name" -f ../../scripts/gro_OP.awk $trajgroname)
echo $j $H1op $H2op >> $sn1outname
done
for((  j = 3 ;  j <= 18;  j=j+1  ))
do
Cname=$(grep M_G2C"$j"_M $mappingFILE | awk '{printf "%5s\n",$2}')
H1name=$(grep M_G2C"$j"H1_M $mappingFILE | awk '{printf "%5s\n",$2}')
H2name=$(grep M_G2C"$j"H2_M $mappingFILE | awk '{printf "%5s\n",$2}')
H1op=$(awk -v Cname="$Cname" -v Hname="$H1name" -f ../../scripts/gro_OP.awk $trajgroname)
H2op=$(awk -v Cname="$Cname" -v Hname="$H2name" -f ../../scripts/gro_OP.awk $trajgroname)
echo $j $H1op $H2op >> $sn2outname
done
