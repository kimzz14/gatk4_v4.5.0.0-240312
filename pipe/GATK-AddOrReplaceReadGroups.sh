############################################################################################
readID=$1
threadN=$2

############################################################################################

gatk --java-options "-Djava.io.tmpdir=./tmp" AddOrReplaceReadGroups \
--INPUT                 result/${readID}.bam \
--OUTPUT                result/${readID}.RGsorted.bam \
--SORT_ORDER            coordinate \
--MAX_RECORDS_IN_RAM    1280000 \
--VALIDATION_STRINGENCY LENIENT \
--RGID                  ${readID} \
--RGLB                  ${readID}_LIB \
--RGPL                  ILLUMINA \
--RGPU                  NONE \
--RGSM                  ${readID} \
1>                      result/${readID}.RGsorted.bam.log \
2>                      result/${readID}.RGsorted.bam.err

samtools index \
                        result/${readID}.RGsorted.bam \
1>                      result/${readID}.RGsorted.bam.bai.log \
2>                      result/${readID}.RGsorted.bam.bai.err

samtools flagstat \
                        result/${readID}.RGsorted.bam \
1>                      result/${readID}.RGsorted.bam.flagstat \
2>                      result/${readID}.RGsorted.bam.flagstat.log 

#rm                      result/${readID}.bam