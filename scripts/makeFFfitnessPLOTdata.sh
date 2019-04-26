rm  ../DATA/FFfitnessSLIPIDS.dat
grep 'fitness from FF' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC/T298K/MODEL_SLIPIDS/fitness.txt | awk '{print 0"   "$4}'  >> ../DATA/FFfitnessSLIPIDS.dat
grep 'fitness from FF' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+50%chol/T298K/MODEL_SLIPIDS/fitness.txt | awk '{print 50"   "$4}' >> ../DATA/FFfitnessSLIPIDS.dat

rm  ../DATA/FFfitnessCHARMM.dat
grep 'fitness from FF' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC/T310K/MODEL_CHARMM36_GROMACS5.0/fitness.txt | awk '{print 0"   "$4}'  >> ../DATA/FFfitnessCHARMM.dat
grep 'fitness from FF' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+50%chol/T310K/MODEL_CHARMM36_GROMACS5.0/fitness.txt | awk '{print 50"   "$4}' >> ../DATA/FFfitnessCHARMM.dat
