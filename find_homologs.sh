#!/bin/bash
query=$1
input_file=$2
outfile=$3
tblastn -query $1 -subject $2 -outfmt "6 qseqid sseqid pident qcovs" -out $3
#awk filtering
awk '$3 > 30 && $4 > 90' $3 > tmp.txt
mv tmp.txt $3
wc -l $3
