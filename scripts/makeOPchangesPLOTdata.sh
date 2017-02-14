#EXPERIMENTAL

#psc -r < ../../DATA/EXP-Ferreira13/S_CH_POPC/OP_palmitoyl.txt | sc -W% - > ../../DATA/EXP-Ferreira13/S_CH_POPC/OP_palmitoylTRANSPOSE.txt
#cat ../../DATA/EXP-Ferreira13/S_CH_POPC/OP_palmitoyl.txt | awk '{if(NR==1)print $0; else print $1" "$2-$2" "$2-$3" "$2-$4" "$2-$5" "$2-$6" "$2-$7}' > ../../DATA/EXP-Ferreira13/S_CH_POPC/OP_palmitoylCHANGE.txt
#psc -r < ../../DATA/EXP-Ferreira13/S_CH_POPC/OP_palmitoylCHANGE.txt | sc -W% - > ../../DATA/EXP-Ferreira13/S_CH_POPC/OP_palmitoylchangeTRANSPOSE.txt

#BERGER

#paste ../../MATCH/Data/Lipid_Bilayers/POPC/T300K/MODEL_Berger/sn-1_Order_Parameters_Simulation.dat ../../MATCH/Data/Lipid_Bilayers/POPC+15%chol/T300K/MODEL_Berger/sn-1_Order_Parameters_Simulation.dat ../../MATCH/Data/Lipid_Bilayers/POPC+50%chol/T300K/MODEL_Berger/sn-1_Order_Parameters_Simulation.dat | awk '{if(NR==1)print "0   15   50"; else print $2"   "$5"   "$8}' > ../DATA/OPcholBERGERsn-1_1.dat
#psc -r < ../DATA/OPcholBERGERsn-1_1.dat | sc -W% - > ../DATA/OPcholBERGERsn-1_1transpose.dat

#MACROG
#POPCsn1DATA=../scratch/POPCmacrog/OrderParamSN1.dat
#POPCchol11percSN1data=../scratch/POPCmacrog/OrderParamSN1chol10.dat
#POPCchol44percSN1data=../scratch/POPCmacrog/OrderParamSN1chol40.dat
#POPCchol50percSN1data=../scratch/POPCmacrog/OrderParamSN1chol50.dat
#POPCchol56percSN1data=../scratch/POPCmacrog/OrderParamSN1chol60.dat
#paste $POPCsn1DATA $POPCchol11percSN1data $POPCchol44percSN1data $POPCchol50percSN1data $POPCchol56percSN1data | awk 'BEGIN{print "0   11   44    50    56"}{print $2"   "$5"   "$8"    "$11"   "$14}' > ../DATA/OPcholMACROGsn-1_1.dat
#psc -r < ../DATA/OPcholMACROGsn-1_1.dat | sc -W% - > ../DATA/OPcholMACROGsn-1_1transpose.dat

#CHARMM36
#POPCsn1DATA=../../MATCH/Data/Lipid_Bilayers/POPC/T310K/MODEL_CHARMM36_GROMACS5.0/sn-1_Order_Parameters_Simulation.dat
#POPCchol20percSN1data=../../MATCH/Data/Lipid_Bilayers/POPC+20%chol/T310K/MODEL_CHARMM36_GROMACS5.0/sn-1_Order_Parameters_Simulation.dat
#POPCchol30percSN1data=../../MATCH/Data/Lipid_Bilayers/POPC+30%chol/T310K/MODEL_CHARMM36_GROMACS5.0/sn-1_Order_Parameters_Simulation.dat
#POPCchol40percSN1data=../../MATCH/Data/Lipid_Bilayers/POPC+40%chol/T310K/MODEL_CHARMM36_GROMACS5.0/sn-1_Order_Parameters_Simulation.dat
#POPCchol50percSN1data=../../MATCH/Data/Lipid_Bilayers/POPC+50%chol/T310K/MODEL_CHARMM36_GROMACS5.0/sn-1_Order_Parameters_Simulation.dat
#paste $POPCsn1DATA $POPCchol20percSN1data $POPCchol30percSN1data $POPCchol40percSN1data $POPCchol50percSN1data | awk 'BEGIN{print "0   20   30   40  50"}{print $2"   "$5"   "$8"   "$11"    "$14}' > ../DATA/OPcholCHARMM36sn-1_1.dat
#psc -r < ../DATA/OPcholCHARMM36sn-1_1.dat | sc -W% - > ../DATA/OPcholCHARMM36sn-1_1transpose.dat

#SLIPIDS T310K
#POPCsn1DATA=../../MATCH/Data/Lipid_Bilayers/POPC/T310K/MODEL_SLIPIDS/sn-1_Order_Parameters_Simulation.dat
#POPCchol10percSN1data=../../MATCH/Data/Lipid_Bilayers/POPC+10%chol/T310K/MODEL_SLIPIDS/sn-1_Order_Parameters_Simulation.dat
#POPCchol20percSN1data=../../MATCH/Data/Lipid_Bilayers/POPC+20%chol/T310K/MODEL_SLIPIDS/sn-1_Order_Parameters_Simulation.dat
#POPCchol30percSN1data=../../MATCH/Data/Lipid_Bilayers/POPC+30%chol/T310K/MODEL_SLIPIDS/sn-1_Order_Parameters_Simulation.dat
#paste $POPCsn1DATA $POPCchol10percSN1data $POPCchol20percSN1data $POPCchol30percSN1data | awk 'BEGIN{print "0  10  20   30"}{if(NR>1)print $2"   "$5"   "$8"   "$11}' > ../DATA/OPcholSLIPIDsn-1_1.dat
#psc -r < ../DATA/OPcholSLIPIDsn-1_1.dat | sc -W% - > ../DATA/OPcholSLIPIDsn-1_1transpose.dat

#SLIPIDS
POPCsn1DATA=../../MATCH/Data/Lipid_Bilayers/POPC/T298K/MODEL_SLIPIDS/sn-1_Order_Parameters_Simulation.dat
POPCchol30percSN1data=../../MATCH/Data/Lipid_Bilayers/POPC+30%chol/T298K/MODEL_SLIPIDS/sn-1_Order_Parameters_Simulation.dat
POPCchol50percSN1data=../../MATCH/Data/Lipid_Bilayers/POPC+50%chol/T298K/MODEL_SLIPIDS/sn-1_Order_Parameters_Simulation.dat
#paste $POPCsn1DATA $POPCchol30percSN1data $POPCchol50percSN1data | awk 'BEGIN{print "0  30  50"}{if(NR>1)print $2"   "$5"   "$8}' > ../DATA/OPcholSLIPIDsn-1_1.dat
paste $POPCchol30percSN1data $POPCchol50percSN1data | awk 'BEGIN{print "0  30  50"}{if(NR>1)print "nan   "$2"   "$5}' > ../DATA/OPcholSLIPIDsn-1_1.dat
psc -r < ../DATA/OPcholSLIPIDsn-1_1.dat | sc -W% - > ../DATA/OPcholSLIPIDsn-1_1transpose.dat
