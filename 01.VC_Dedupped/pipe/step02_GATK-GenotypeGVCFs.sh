gatk --java-options '-Djava.io.tmpdir=./tmp' GenotypeGVCFs \
--reference ../reference/ref.fa \
--variant result/pooled.RGsorted.dedupped.HaplotypeCaller.g.vcf.gz \
-stand-call-conf 30 \
--max-alternate-alleles 30 \
--output result/pooled.RGsorted.dedupped.HaplotypeCaller.all.vcf.gz \
1>       result/pooled.RGsorted.dedupped.HaplotypeCaller.all.vcf.gz.log \
2>       result/pooled.RGsorted.dedupped.HaplotypeCaller.all.vcf.gz.err
