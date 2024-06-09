############################################################################################
readID=$1

############################################################################################

sh pipe/BWA-mem.sh                     ${readID} ${threadN}
sh pipe/GATK-AddOrReplaceReadGroups.sh ${readID}
sh pipe/GATK-MarkDuplicates.sh         ${readID}.RGsorted
sh pipe/GATK-SplitNCigarReads.sh       ${readID}.RGsorted.dedupped
sh pipe/GATK-HaplotypeCaller.sh        ${readID}.RGsorted.dedupped.SplitN

echo ${readID} done!