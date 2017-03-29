rm ../DATA/aplCHARMM36_T310K.dat
echo '#[chol]  apl' >> ../DATA/aplCHARMM36_T310K.dat
awk '{print 0" "2*$1/200" "2*$1/200}' ../../MATCH/Data/Lipid_Bilayers/POPC/T310K/MODEL_CHARMM36_GROMACS5.0/area.dat >> ../DATA/aplCHARMM36_T310K.dat
awk '{print 10" "2*$1/220" "2*$1/200}' ../../MATCH/Data/Lipid_Bilayers/POPC+10%chol/T310K/MODEL_CHARMM36_GROMACS5.0/area.dat >> ../DATA/aplCHARMM36_T310K.dat
awk '{print 20" "2*$1/250" "2*$1/200}' ../../MATCH/Data/Lipid_Bilayers/POPC+20%chol/T310K/MODEL_CHARMM36_GROMACS5.0/area.dat >> ../DATA/aplCHARMM36_T310K.dat
awk '{print 30" "2*$1/286" "2*$1/200}' ../../MATCH/Data/Lipid_Bilayers/POPC+30%chol/T310K/MODEL_CHARMM36_GROMACS5.0/area.dat >> ../DATA/aplCHARMM36_T310K.dat
awk '{print 40" "2*$1/334" "2*$1/200}' ../../MATCH/Data/Lipid_Bilayers/POPC+40%chol/T310K/MODEL_CHARMM36_GROMACS5.0/area.dat >> ../DATA/aplCHARMM36_T310K.dat
awk '{print 50" "2*$1/400" "2*$1/200}' ../../MATCH/Data/Lipid_Bilayers/POPC+50%chol/T310K/MODEL_CHARMM36_GROMACS5.0/area.dat >> ../DATA/aplCHARMM36_T310K.dat

rm ../DATA/aplSLIPID_T298K.dat
echo '#[chol]  apl' >> ../DATA/aplSLIPID_T298K.dat
awk '{print 0" "2*$1/(512)" "2*$1/512}' /home/samuli/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC/T298K/MODEL_SLIPIDS/area.dat >> ../DATA/aplSLIPID_T298K.dat
awk '{print 30" "2*$1/(358+154)" "2*$1/358}' /home/samuli/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+30%chol/T298K/MODEL_SLIPIDS/area.dat >> ../DATA/aplSLIPID_T298K.dat
awk '{print 50" "2*$1/(256+256)" "2*$1/256}' /home/samuli/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+50%chol/T298K/MODEL_SLIPIDS/area.dat >> ../DATA/aplSLIPID_T298K.dat

rm ../DATA/aplSLIPID_T310K.dat
echo '#[chol]  apl'  >> ../DATA/aplSLIPID_T310K.dat
awk '{print 0" "2*$1/(200)" "2*$1/200}' /home/samuli/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC/T310K/MODEL_SLIPIDS/area.dat  >> ../DATA/aplSLIPID_T310K.dat
awk '{print 10" "2*$1/(200+22)" "2*$1/200}' /home/samuli/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+10%chol/T310K/MODEL_SLIPIDS/area.dat  >> ../DATA/aplSLIPID_T310K.dat
awk '{print 20" "2*$1/(200+50)" "2*$1/200}' /home/samuli/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+20%chol/T310K/MODEL_SLIPIDS/area.dat  >> ../DATA/aplSLIPID_T310K.dat
awk '{print 30" "2*$1/(200+86)" "2*$1/200}' /home/samuli/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+30%chol/T310K/MODEL_SLIPIDS/area.dat  >> ../DATA/aplSLIPID_T310K.dat
awk '{print 40" "2*$1/(200+134)" "2*$1/200}' /home/samuli/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+40%chol/T310K/MODEL_SLIPIDS/area.dat  >> ../DATA/aplSLIPID_T310K.dat
awk '{print 50" "2*$1/(200+200)" "2*$1/200}' /home/samuli/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+50%chol/T310K/MODEL_SLIPIDS/area.dat  >> ../DATA/aplSLIPID_T310K.dat

rm ../DATA/aplBerger_T298K.dat
echo '#[chol]  apl'  >> ../DATA/aplBerger_T298K.dat
awk '{print 0" "2*$1/(128)" "2*$1/128}' /home/samuli/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC/T298K/MODEL_Berger/area.dat  >> ../DATA/aplBerger_T298K.dat
awk '{print 6" "2*$1/(120+8)" "2*$1/120}' /home/samuli/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+6%chol/T298K/MODEL_Berger/area.dat  >> ../DATA/aplBerger_T298K.dat
awk '{print 15" "2*$1/(110+18)" "2*$1/110}' /home/samuli/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+15%chol/T300K/MODEL_Berger/area.dat  >> ../DATA/aplBerger_T298K.dat
awk '{print 34" "2*$1/(84+44)" "2*$1/84}' /home/samuli/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+34%chol/T300K/MODEL_Berger/area.dat  >> ../DATA/aplBerger_T298K.dat
awk '{print 50" "2*$1/(64+64)" "2*$1/64}' /home/samuli/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+50%chol/T298K/MODEL_Berger/area.dat  >> ../DATA/aplBerger_T298K.dat

rm ../DATA/aplMACROG_T310K.dat
echo '#[chol]  apl'  >> ../DATA/aplMACROG_T310K.dat
awk '{print 0" "2*$1/(128)" "2*$1/128}' /home/samuli/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC/T310K/MODEL_MACROG/area.dat  >> ../DATA/aplMACROG_T310K.dat
awk '{print 10" "2*$1/(114+14)" "2*$1/114}' /home/samuli/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+10%chol/T310K/MODEL_MACROG/area.dat  >> ../DATA/aplMACROG_T310K.dat
awk '{print 44" "2*$1/(72+56)" "2*$1/72}' /home/samuli/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+44%chol/T310K/MODEL_MACROG/area.dat  >> ../DATA/aplMACROG_T310K.dat
awk '{print 50" "2*$1/(64+64)" "2*$1/64}' /home/samuli/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+44%chol/T310K/MODEL_MACROG/area.dat  >> ../DATA/aplMACROG_T310K.dat

