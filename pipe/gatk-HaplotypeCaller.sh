############################################################################################
readID=$1

############################################################################################

gatk --java-options "-Djava.io.tmpdir=./tmp" HaplotypeCaller \
-ERC        GVCF \
--reference reference/ref.fa \
--input     result/${readID}.bam \
--output    result/${readID}.HaplotypeCaller.g.vcf.gz \
1>          result/${readID}.HaplotypeCaller.g.vcf.gz.log \
2>          result/${readID}.HaplotypeCaller.g.vcf.gz.err
