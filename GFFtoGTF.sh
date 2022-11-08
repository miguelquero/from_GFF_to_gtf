#!/bin/bash

##FROM .GFF TO .GFT to apply the telescope.
#The input:

chr01   PacBio  transcript      10008047        10011595        .       -       .       gene_id "PB.414"; transcript_id "PB.414.1";
chr01   PacBio  transcript      10008091        10011595        .       -       .       gene_id "PB.414"; transcript_id "PB.414.2";
chr01   PacBio  transcript      10112443        10118998        .       -       .       gene_id "PB.417"; transcript_id "PB.417.1";

#The output:

chr01   PacBio  transcript      10008047        10011595        .       -       .       locus "PB.414"; transcript_id "PB.414.1";
chr01   PacBio  transcript      10008091        10011595        .       -       .       locus "PB.414"; transcript_id "PB.414.2";
chr01   PacBio  transcript      10112443        10118998        .       -       .       locus "PB.417"; transcript_id "PB.417.1";

sed 's/gene_id/locus/g' file.gff > file.gtf

