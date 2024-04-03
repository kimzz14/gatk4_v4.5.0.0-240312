############################################################################################
readID=$1
threadN=$2
############################################################################################

gatk --java-options "-Djava.io.tmpdir=./tmp" HaplotypeCaller \
-ERC GVCF \
--reference reference/ref.fa \
--input  result/${readID}.RGsorted.dedupped.bam \
--output result/${readID}.RGsorted.dedupped.HaplotypeCaller.g.vcf.gz \
1>       result/${readID}.RGsorted.dedupped.HaplotypeCaller.g.vcf.gz.log \
2>       result/${readID}.RGsorted.dedupped.HaplotypeCaller.g.vcf.gz.err
