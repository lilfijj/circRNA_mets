#ularcirc






# circRNA_mets

CIRI output file format info:

Columns of output file are split by tabs ("\t" in shell and perl).
Each column gives information of a predicted circRNA:
Column 1: ID of a predicted circRNA in the pattern of "chr:start|end";
Column 2: chromosome of a predicted circRNA
Column 3: start loci of a predicted circRNA on the chromosome
Column 4: end loci of a predicted circRNA on the chromosome
Column 5: circular junction read (also called as back-spliced junction read) count of a predicted circRNA 
Column 6: unique CIGAR types of a predicted circRNA. For example, a circRNAs have three junction reads: read A (80M20S, 80S20M), read B (80M20S, 80S20M), read C (40M60S, 40S30M30S, 70S30M), then its has two SM types (80S20M, 70S30M), two MS types (80M20S, 70M30S) and one SMS type (40S30M30S). Thus its SM_MS_SMS should be 2_2_1.
Column 7: non-junction read count of a predicted circRNA that mapped across the circular junction but consistent with linear RNA instead of being back-spliced
Column 8: ratio of circular junction reads calculated by 2*#junction_reads/(2*#junction_reads+#non_junction_reads). #junction_reads is multiplied by two because a junction read is generated from two ends of circular junction but only counted once while a non-junction read is from one end. It has to be mentioned that the non-junction reads are still possibly from another larger circRNA, so the junction_reads_ratio based on it may be an inaccurate estimation of relative expression of the circRNA.
Column 9: type of a circRNA according to positions of its two ends on chromosome (exon, intron or intergenic_region; only available when annotation file is provided)
Column 10: ID of the gene(s) where an exonic or intronic circRNA locates
Column 11: strand info of a predicted circRNAs (new in CIRI2)
Column 12: all of the circular junction read IDs (split by ",")
