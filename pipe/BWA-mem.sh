############################################################################################
readID=$1
threadN=$2

readDir=/test
############################################################################################

bwa mem \
            -t ${threadN} \
             reference/ref.fa \
             ${readDir}/${readID}-P_1.fastq.gz \
             ${readDir}/${readID}-P_2.fastq.gz \
1>           result/${readID}.aln-pe.sam \
2>           result/${readID}.aln-pe.sam.log 

samtools flagstat \
result/${readID}.aln-pe.sam \
1>           result/${readID}.aln-pe.sam.flagstat \
2>           result/${readID}.aln-pe.sam.flagstat.log

for i in 1 2
do
    bwa mem \
             -t ${threadN} \
             reference/ref.fa \
             ${readDir}/${readID}-U_${i}.fastq.gz \
    1>       result/${readID}.aln-se.${i}.sam \
    2>       result/${readID}.aln-se.${i}.sam.log 
    
    samtools flagstat \
             result/${readID}.aln-se.${i}.sam \
    1>       result/${readID}.aln-se.${i}.sam.flagstat \
    2>       result/${readID}.aln-se.${i}.sam.flagstat.log

done

gatk --java-options "-Djava.io.tmpdir=./tmp" MergeSamFiles \
--INPUT      result/${readID}.aln-pe.sam \
--INPUT      result/${readID}.aln-se.1.sam \
--INPUT      result/${readID}.aln-se.2.sam \
--SORT_ORDER coordinate \
--OUTPUT     result/${readID}.bam \
1>           result/${readID}.bam.log \
2>           result/${readID}.bam.err

samtools flagstat \
             result/${readID}.bam \
1>           result/${readID}.bam.flagstat \
2>           result/${readID}.bam.flagstat.log