python calcSLOPES.py ../DATA/OPcholEXPDMPCurbina.dat 51 > ../DATA/expSLOPESurbina.dat

python calcSLOPES.py ../DATA/OPcholEXPDMPCdouliez.dat 51 > ../DATA/expSLOPESdouliez.dat
mv ../scratch/tst.pdf ../FIGS/slopesEXPERIMENTdouliez.pdf

python calcSLOPES.py ../DATA/EXP-Ferreira13/S_CH_POPC/OP_palmitoylTRANSPOSE.txt 51 > ../DATA/expSLOPES.dat
mv ../scratch/tst.pdf ../FIGS/slopesEXPERIMENT.pdf


python calcSLOPES.py ../DATA/OPcholBERGERsn-1_1transpose.dat 51 > ../DATA/bergerSLOPES.dat
mv ../scratch/tst.pdf ../FIGS/slopesBERGER.pdf

python calcSLOPES.py ../DATA/OPcholCHARMM36sn-1_1transpose.dat 41 > ../DATA/charmmSLOPES.dat
mv ../scratch/tst.pdf ../FIGS/slopesCHARMM.pdf

python calcSLOPES.py ../DATA/OPcholMACROGsn-1_1transposeFORslopes.dat 51 > ../DATA/macrogSLOPES.dat
mv ../scratch/tst.pdf ../FIGS/slopesMACROG.pdf

python calcSLOPES.py ../DATA/OPcholSLIPIDsn-1_1transpose.dat 51 > ../DATA/slipidsSLOPES.dat
mv ../scratch/tst.pdf ../FIGS/slopesSLIPIDS.pdf

python calcSLOPES.py ../DATA/OPcholSLIPIDT310Ksn-1_1transpose.dat 41 > ../DATA/slipidsT310KSLOPES.dat
mv ../scratch/tst.pdf ../FIGS/slopesSLIPIDST310K.pdf
