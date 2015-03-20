Oname=$(grep M_G3O3_M ../../MAPPING/mappingPOPCcharmm.txt | awk '{print $2}')
aname=$(grep M_G3C4_M ../../MAPPING/mappingPOPCcharmm.txt | awk '{print $2}')
bname=$(grep M_G3C5_M ../../MAPPING/mappingPOPCcharmm.txt | awk '{print $2}')
Nname=$(grep M_G3N6_M ../../MAPPING/mappingPOPCcharmm.txt | awk '{print $2}')
#
tprname=/wrk/ollilas1/POPCdata/POPCcharmm/popcRUN2.tpr
trajname=/wrk/ollilas1/POPCdata/POPCcharmm/popcRUN2-3.xtc
outname=O-a-b-Ndih.xvg
echo 'a' "$Oname" "$aname" "$bname" "$Nname" '
q
' | make_ndx -f $tprname -o O-a-b-Ndih.ndx
echo O12_C11_C12_N | g_angle -f $trajname -n O-a-b-Ndih.ndx -type dihedral -od $outname
#
tprname=/wrk/ollilas1/POPCdata/POPCcharmm/POPCnacl/13na/popcRUN2.tpr
trajname=/wrk/ollilas1/POPCdata/POPCcharmm/POPCnacl/13na/popcRUN2-4.xtc
outname=O-a-b-Ndih13na.xvg
echo 'a' "$Oname" "$aname" "$bname" "$Nname" '
q
' | make_ndx -f $tprname -o O-a-b-Ndih.ndx
echo O12_C11_C12_N | g_angle -f $trajname -n O-a-b-Ndih.ndx -type dihedral -od $outname
#
tprname=/wrk/ollilas1/POPCdata/POPCcharmm/POPCnacl/26na/popcRUN.trr
trajname=/wrk/ollilas1/POPCdata/POPCcharmm/POPCnacl/26na/popcRUN1-5.trr
outname=O-a-b-Ndih26na.xvg
echo 'a' "$Oname" "$aname" "$bname" "$Nname" '
q
' | make_ndx -f $tprname -o O-a-b-Ndih.ndx
echo O12_C11_C12_N | g_angle -f $trajname -n O-a-b-Ndih.ndx -type dihedral -od $outname
#
tprname=/wrk/ollilas1/POPCdata/POPCcharmm/POPCnacl/52na/popcRUN2.tpr
trajname=/wrk/ollilas1/POPCdata/POPCcharmm/POPCnacl/26na/popcRUN.trr
outname=O-a-b-Ndih52na.xvg
echo 'a' "$Oname" "$aname" "$bname" "$Nname" '
q
' | make_ndx -f $tprname -o O-a-b-Ndih.ndx
echo O12_C11_C12_N | g_angle -f $trajname -n O-a-b-Ndih.ndx -type dihedral -od $outname
#
tprname=/wrk/ollilas1/POPCdata/POPCcharmm/POPCnacl/78na/popcRUN2.tpr
trajname=/wrk/ollilas1/POPCdata/POPCcharmm/POPCnacl/78na/popcRUN2-4.xtc
outname=O-a-b-Ndih78na.xvg
echo 'a' "$Oname" "$aname" "$bname" "$Nname" '
q
' | make_ndx -f $tprname -o O-a-b-Ndih.ndx
echo O12_C11_C12_N | g_angle -f $trajname -n O-a-b-Ndih.ndx -type dihedral -od $outname

