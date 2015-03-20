#wget https://zenodo.org/record/14068/files/POPC_50CHL.tpr
#wget https://zenodo.org/record/14068/files/POPC_50CHL.xtc
tprname=POPC_50CHL.tpr
trajname=POPC_50CHL.xtc
#echo System | trjconv -f $trajname -s $tprname -o runPROT.gro -pbc res -b 100000
for((  j = 3 ;  j <= 16;  j=j+1  ))
do
Cname=$(grep M_G1C"$j"_M ../../MAPPING/mappingPOPCcharmm.txt | awk '{printf "%5s\n",$2}')
H1name=$(grep M_G1C"$j"H1_M ../../MAPPING/mappingPOPCcharmm.txt | awk '{printf "%5s\n",$2}')
H2name=$(grep M_G1C"$j"H2_M ../../MAPPING/mappingPOPCcharmm.txt | awk '{printf "%5s\n",$2}')
H1op=$(awk -v Cname="$Cname" -v Hname="$H1name" -f ../../scripts/gro_OP.awk runPROT.gro)
H2op=$(awk -v Cname="$Cname" -v Hname="$H2name" -f ../../scripts/gro_OP.awk runPROT.gro)
echo $j $H1op $H2op
done