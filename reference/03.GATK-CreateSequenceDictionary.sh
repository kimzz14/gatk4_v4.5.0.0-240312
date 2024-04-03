gatk --java-options '-Djava.io.tmpdir=./tmp' CreateSequenceDictionary \
-R ref.fa \
-O ref.dict \
1> ref.dict.log \
2> ref.dict.err
