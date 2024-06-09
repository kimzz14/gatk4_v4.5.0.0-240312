############################################################################################
readID=$1

############################################################################################

sh pipe/BWA-mem.sh                     ${readID} ${threadN}
sh pipe/GATK-AddOrReplaceReadGroups.sh ${readID}
sh pipe/GATK-MarkDuplicates.sh         ${readID}.RGsorted
sh pipe/GATK-HaplotypeCaller.sh        ${readID}.RGsorted
sh pipe/GATK-HaplotypeCaller.sh        ${readID}.RGsorted.dedupped

echo ${readID} done!