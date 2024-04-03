WorkingDir=/archive/kimzz14/templete/gatk4_v4.5.0.0-240312

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
#conda create -n gatk4_v4.5.0.0-240312

#source activate gatk4_v4.5.0.0-240312

#conda install gatk4
#bioconda/noarch::gatk4-4.5.0.0-py36hdfd78af_0

#conda install samtools
#bioconda/linux-64::samtools-1.18-h50ea8bc_1
#bioconda/linux-64::htslib-1.18-h81da01d_0

#conda install bcftools
#bioconda/linux-64::bcftools-1.18-h8b25389_0

#conda install bwa
#bioconda/linux-64::bwa-0.7.17-he4a0461_11
##################################################################################
