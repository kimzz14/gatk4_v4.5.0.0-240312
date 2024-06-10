gatk --java-options '-Djava.io.tmpdir=./tmp' SelectVariants \
--reference ../reference/ref.fa \
--variant result/pooled.HaplotypeCaller.all.snp.filtered.vcf.gz \
--exclude-filtered \
--exclude-non-variants \
--output result/pooled.HaplotypeCaller.all.snp.filtered.pass.vcf.gz \
1>       result/pooled.HaplotypeCaller.all.snp.filtered.pass.vcf.gz.log \
2>       result/pooled.HaplotypeCaller.all.snp.filtered.pass.vcf.gz.err
