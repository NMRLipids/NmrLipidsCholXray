awk '{if(NR==1){print $0}else if(NR==2){ref1=$2; ref2=$3; print $1" "$2-ref1" "$3-ref2}else{print $1" "$2-ref1" "$3-ref2}}' aplBerger_T298K.dat > aplBerger_T298Kchange.dat
awk '{if(NR==1){print $0}else if(NR==2){ref1=$2; ref2=$3; print $1" "$2-ref1" "$3-ref2}else{print $1" "$2-ref1" "$3-ref2}}' aplCHARMM36_T310K.dat > aplCHARMM36_T310Kchange.dat
awk '{if(NR==1){print $0}else if(NR==2){ref1=$2; ref2=$3; print $1" "$2-ref1" "$3-ref2}else{print $1" "$2-ref1" "$3-ref2}}' aplMACROG_T310K.dat > aplMACROG_T310Kchange.dat
awk '{if(NR==1){print $0}else if(NR==2){ref1=$2; ref2=$3; print $1" "$2-ref1" "$3-ref2}else{print $1" "$2-ref1" "$3-ref2}}' aplSLIPID_T298K.dat > aplSLIPID_T298Kchange.dat
awk '{if(NR==1){print $0}else if(NR==2){ref1=$2; ref2=$3; print $1" "$2-ref1" "$3-ref2}else{print $1" "$2-ref1" "$3-ref2}}' aplSLIPID_T310K.dat > aplSLIPID_T310Kchange.dat
