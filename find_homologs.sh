#!/bin/bash
query=$1
input_file=$2
outfile=$3

tblastn -query $1 -subject $2 -outfmt "6 qseqid sseqid pident qcovs" -out $3

wc -l $3
