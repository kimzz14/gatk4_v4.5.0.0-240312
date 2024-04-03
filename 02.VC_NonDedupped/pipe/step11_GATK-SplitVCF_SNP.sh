gatk --java-options '-Djava.io.tmpdir=./tmp' SelectVariants \
--reference ../reference/ref.fa \
-select-type SNP \
--variant result/pooled.RGsorted.HaplotypeCaller.all.vcf.gz \
--output  result/pooled.RGsorted.HaplotypeCaller.all.snp.vcf.gz \
1>        result/pooled.RGsorted.HaplotypeCaller.all.snp.vcf.gz.log \
2>        result/pooled.RGsorted.HaplotypeCaller.all.snp.vcf.gz.err