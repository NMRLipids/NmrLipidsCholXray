sed 's/ /\
/g' densityEPS.dat > tst2.dat
sed 's/,/ /g' tst2.dat > tst3.dat
xaxis=$(awk '{print ($2-$1)/10}' xaxis.dat)
xaxisPOINT=$(awk '{print $1}' xaxis.dat)
yaxis=$(awk '{print ($2-$1)/0.1}' yaxis.dat)
yaxisPOINT=$(awk '{print $1}' yaxis.dat)
awk -v xaxis=$xaxis -v xaxisPOINT=$xaxisPOINT -v yaxis=$yaxis -v yaxisPOINT=$yaxisPOINT '{if(NR==1){refx=$1;refy=$2}else{refx=refx+$1; refy=refy+$2} print (refx-xaxisPOINT)/xaxis-30" "(refy-yaxisPOINT)/yaxis+0.2}' tst3.dat > tst4.dat