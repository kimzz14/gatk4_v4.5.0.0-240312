############################################################################################
readID=$1
threadN=$2
############################################################################################

gatk --java-options "-Djava.io.tmpdir=./tmp" MarkDuplicates \
--INPUT=result/${readID}.RGsorted.bam \
--OUTPUT=result/${readID}.RGsorted.dedupped.bam \
--METRICS_FILE=result/${readID}.RGsorted.dedupped.metrics \
--REMOVE_DUPLICATES=true \
--ASSUME_SORTED=true \
--MAX_RECORDS_IN_RAM=1280000 \
--VALIDATION_STRINGENCY=LENIENT \
--MAX_FILE_HANDLES=1024 \
1> result/${readID}.RGsorted.dedupped.bam.log \
2> result/${readID}.RGsorted.dedupped.bam.err

samtools index \
result/${readID}.RGsorted.dedupped.bam \
1> result/${readID}.RGsorted.dedupped.bam.bai.log \
2> result/${readID}.RGsorted.dedupped.bam.bai.err

samtools flagstat result/${readID}.RGsorted.dedupped.bam \
1> result/${readID}.RGsorted.dedupped.bam.flagstat \
2> result/${readID}.RGsorted.dedupped.bam.flagstat.log 

rm result/${readID}.RGsorted.bam
