psc -r < ../../DATA/EXP-Ferreira13/S_CH_POPC/OP_palmitoyl.txt | sc -W% - > ../../DATA/EXP-Ferreira13/S_CH_POPC/OP_palmitoylTRANSPOSE.txt
cat ../../DATA/EXP-Ferreira13/S_CH_POPC/OP_palmitoyl.txt | awk '{if(NR==1)print $0; else print $1" "$2-$2" "$2-$3" "$2-$4" "$2-$5" "$2-$6" "$2-$7}' > ../../DATA/EXP-Ferreira13/S_CH_POPC/OP_palmitoylCHANGE.txt
psc -r < ../../DATA/EXP-Ferreira13/S_CH_POPC/OP_palmitoylCHANGE.txt | sc -W% - > ../../DATA/EXP-Ferreira13/S_CH_POPC/OP_palmitoylchangeTRANSPOSE.txt
