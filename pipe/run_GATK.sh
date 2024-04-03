############################################################################################
readID=$1
threadN=$2
############################################################################################

sh pipe/BWA-mem.sh ${readID} ${threadN}
sh pipe/GATK-AddOrReplaceReadGroups.sh ${readID}
sh pipe/GATK-MarkDuplicates.sh ${readID}
#sh pipe/GATK-HaplotypeCaller_NonDedupped.sh ${readID}
sh pipe/GATK-HaplotypeCaller_Dedupped.sh ${readID}

echo ${readID} done!