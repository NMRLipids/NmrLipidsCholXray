rm  ../DATA/FFfitnessSLIPIDS.dat
rm  ../DATA/HGfitnessSLIPIDS.dat
rm  ../DATA/GLYfitnessSLIPIDS.dat
rm  ../DATA/SN1fitnessSLIPIDS.dat
rm  ../DATA/SN2fitnessSLIPIDS.dat
grep 'fitness from FF' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC/T298K/MODEL_SLIPIDS/fitness.txt | awk '{print 0"   "$4}'  >> ../DATA/FFfitnessSLIPIDS.dat
grep 'fitness from FF' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+50%chol/T298K/MODEL_SLIPIDS/fitness.txt | awk '{print 50"   "$4}' >> ../DATA/FFfitnessSLIPIDS.dat
grep 'fitness from headgr ' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC/T298K/MODEL_SLIPIDS/fitness.txt | awk '{print 0"   "$4}'  >> ../DATA/HGfitnessSLIPIDS.dat
grep 'fitness from headgr ' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+50%chol/T298K/MODEL_SLIPIDS/fitness.txt | awk '{print 50"   "$4}' >> ../DATA/HGfitnessSLIPIDS.dat
grep 'fitness from glys ' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC/T298K/MODEL_SLIPIDS/fitness.txt | awk '{print 0"   "$4}'  >> ../DATA/GLYfitnessSLIPIDS.dat
grep 'fitness from glys ' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+50%chol/T298K/MODEL_SLIPIDS/fitness.txt | awk '{print 50"   "$4}' >> ../DATA/GLYfitnessSLIPIDS.dat
grep 'fitness from sn1 ' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC/T298K/MODEL_SLIPIDS/fitness.txt | awk '{print 0"   "$4}'  >> ../DATA/SN1fitnessSLIPIDS.dat
grep 'fitness from sn1 ' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+50%chol/T298K/MODEL_SLIPIDS/fitness.txt | awk '{print 50"   "$4}' >> ../DATA/SN1fitnessSLIPIDS.dat
grep 'fitness from sn2 ' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC/T298K/MODEL_SLIPIDS/fitness.txt | awk '{print 0"   "$4}'  >> ../DATA/SN2fitnessSLIPIDS.dat
grep 'fitness from sn2 ' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+50%chol/T298K/MODEL_SLIPIDS/fitness.txt | awk '{print 50"   "$4}' >> ../DATA/SN2fitnessSLIPIDS.dat

rm  ../DATA/FFfitnessCHARMM.dat
rm  ../DATA/HGfitnessCHARMM.dat
rm  ../DATA/GLYfitnessCHARMM.dat
rm  ../DATA/SN1fitnessCHARMM.dat
rm  ../DATA/SN2fitnessCHARMM.dat
grep 'fitness from FF' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC/T310K/MODEL_CHARMM36_GROMACS5.0/fitness.txt | awk '{print 0"   "$4}'  >> ../DATA/FFfitnessCHARMM.dat
grep 'fitness from FF' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+50%chol/T310K/MODEL_CHARMM36_GROMACS5.0/fitness.txt | awk '{print 50"   "$4}' >> ../DATA/FFfitnessCHARMM.dat
grep 'fitness from headgr ' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC/T310K/MODEL_CHARMM36_GROMACS5.0/fitness.txt | awk '{print 0"   "$4}'  >> ../DATA/HGfitnessCHARMM.dat
grep 'fitness from headgr ' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+50%chol/T310K/MODEL_CHARMM36_GROMACS5.0/fitness.txt | awk '{print 50"   "$4}' >> ../DATA/HGfitnessCHARMM.dat
grep 'fitness from glys ' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC/T310K/MODEL_CHARMM36_GROMACS5.0/fitness.txt | awk '{print 0"   "$4}'  >> ../DATA/GLYfitnessCHARMM.dat
grep 'fitness from glys ' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+50%chol/T310K/MODEL_CHARMM36_GROMACS5.0/fitness.txt | awk '{print 50"   "$4}' >> ../DATA/GLYfitnessCHARMM.dat
grep 'fitness from sn1 ' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC/T310K/MODEL_CHARMM36_GROMACS5.0/fitness.txt | awk '{print 0"   "$4}'  >> ../DATA/SN1fitnessCHARMM.dat
grep 'fitness from sn1 ' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+50%chol/T310K/MODEL_CHARMM36_GROMACS5.0/fitness.txt | awk '{print 50"   "$4}' >> ../DATA/SN1fitnessCHARMM.dat
grep 'fitness from sn2 ' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC/T310K/MODEL_CHARMM36_GROMACS5.0/fitness.txt | awk '{print 0"   "$4}'  >> ../DATA/SN2fitnessCHARMM.dat
grep 'fitness from sn2 ' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+50%chol/T310K/MODEL_CHARMM36_GROMACS5.0/fitness.txt | awk '{print 50"   "$4}' >> ../DATA/SN2fitnessCHARMM.dat

rm  ../DATA/FFfitnessBERGER.dat
grep 'fitness from FF' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC/T298K/MODEL_Berger/fitness.txt | awk '{print 0"   "$4}'  >> ../DATA/FFfitnessBERGER.dat
grep 'fitness from FF' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+50%chol/T298K/MODEL_Berger/fitness.txt | awk '{print 50"   "$4}' >> ../DATA/FFfitnessBERGER.dat

rm  ../DATA/FFfitnessMACROG.dat
grep 'fitness from FF' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC/T310K/MODEL_MACROG/fitness.txt | awk '{print 0"   "$4}'  >> ../DATA/FFfitnessMACROG.dat
grep 'fitness from FF' /home/local/osollila/NMRlipids/MATCH/Data/Lipid_Bilayers/POPC+50%chol/T310K/MODEL_MACROG/fitness.txt | awk '{print 50"   "$4}' >> ../DATA/FFfitnessMACROG.dat
