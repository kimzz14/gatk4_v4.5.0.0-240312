gatk --java-options '-Djava.io.tmpdir=./tmp' VariantsToTable \
--reference ../reference/ref.fa \
--error-if-missing-data false \
-F CHROM \
-F POS \
-F ID \
-F REF \
-F ALT \
-F QUAL \
-F FILTER \
-F AC \
-F AF \
-F AN \
-F DP \
-GF GT \
-GF AD \
-GF DP \
--variant result/pooled.RGsorted.HaplotypeCaller.all.indel.filtered.pass.vcf.gz \
--output  result/pooled.RGsorted.HaplotypeCaller.all.indel.filtered.pass.tab \
1>        result/pooled.RGsorted.HaplotypeCaller.all.indel.filtered.pass.tab.log \
2>        result/pooled.RGsorted.HaplotypeCaller.all.indel.filtered.pass.tab.err
