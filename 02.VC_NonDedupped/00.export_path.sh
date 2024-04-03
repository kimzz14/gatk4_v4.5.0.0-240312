WorkingDir=/sample/02.VC_NonDedupped

##################################################################################
CurrentDir=$(readlink -f .)
if [ $CurrentDir = $WorkingDir ]
then
	echo "Same"
	source activate gatk4_v4.5.0.0-240312
else
	echo "Diff"
fi
##################################################################################