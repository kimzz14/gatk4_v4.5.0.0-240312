############################################################################################
readID=$1

############################################################################################

gatk --java-options "-Djava.io.tmpdir=./tmp" SplitNCigarReads \
--reference reference/ref.fa \
--input     result/${readID}.bam \
--output    result/${readID}.SplitN.bam \
1>          result/${readID}.SplitN.bam.log \
2>          result/${readID}.SplitN.bam.err

#rm         result/${readID}.bam
