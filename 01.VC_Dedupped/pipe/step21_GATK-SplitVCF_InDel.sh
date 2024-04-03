gatk --java-options '-Djava.io.tmpdir=./tmp' SelectVariants \
--reference ../reference/ref.fa \
--select-type INDEL \
--variant result/pooled.RGsorted.dedupped.HaplotypeCaller.all.vcf.gz \
--output  result/pooled.RGsorted.dedupped.HaplotypeCaller.all.indel.vcf.gz \
1>        result/pooled.RGsorted.dedupped.HaplotypeCaller.all.indel.vcf.gz.log \
2>        result/pooled.RGsorted.dedupped.HaplotypeCaller.all.indel.vcf.gz.err
