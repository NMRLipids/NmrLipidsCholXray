#!/bin/bash
wget https://zenodo.org/record/13945/files/popcRUN4.tpr
wget https://zenodo.org/record/13945/files/popcRUN4.trr
tprname=popcRUN4.tpr
trajname=popcRUN4.trr
trajgroname=analTMP.gro
sn1outname=OrderParamSN1lowHYD.dat
sn2outname=OrderParamSN2lowHYD.dat
mappingFILE=../MAPPING/mappingPOPCcharmm.txt
analFILE=../../nmrlipids.blogspot.fi/scripts/gro_OP.awk
echo System | /home/ollilas1/gromacs/gromacs465/bin/trjconv -f $trajname -s $tprname -o $trajgroname -pbc res -b 0
for((  j = 3 ;  j <= 16;  j=j+1  ))
do
    Cname=$(grep M_G1C"$j"_M $mappingFILE | awk '{printf "%5s\n",$2}')
    H1name=$(grep M_G1C"$j"H1_M $mappingFILE | awk '{printf "%5s\n",$2}')
    H2name=$(grep M_G1C"$j"H2_M $mappingFILE | awk '{printf "%5s\n",$2}')
    H1op=$(awk -v Cname="$Cname" -v Hname="$H1name" -f $analFILE $trajgroname)
    H2op=$(awk -v Cname="$Cname" -v Hname="$H2name" -f $analFILE $trajgroname)
    echo $j $H1op $H2op >> $sn1outname
done
for((  j = 3 ;  j <= 18;  j=j+1  ))
do
    Cname=$(grep M_G2C"$j"_M $mappingFILE | awk '{printf "%5s\n",$2}')
    H1name=$(grep M_G2C"$j"H1_M $mappingFILE | awk '{printf "%5s\n",$2}')
    H2name=$(grep M_G2C"$j"H2_M $mappingFILE | awk '{printf "%5s\n",$2}')
    H1op=$(awk -v Cname="$Cname" -v Hname="$H1name" -f $analFILE $trajgroname)
    H2op=$(awk -v Cname="$Cname" -v Hname="$H2name" -f $analFILE $trajgroname)
    echo $j $H1op $H2op >> $sn2outname
done
