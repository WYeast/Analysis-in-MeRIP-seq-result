# Common analysis for MeRIP-seq result

# Analysis of length for exons where m6A sites locate

## Use summit of m6A sites (summit.bed file) for analysis

### Get all of the exons where m6A sites locate
### intersectBed -wa -wb -a m6A.summit.bed -b Homo_sapiens.GRCh38.95.exon > m6A.summit.exon

### Get the length of those exons
### awk '{print $6-$5}' m6A.summit.exon > m6A.summit.exon.length



# Analysis of m6A density around consensus motif

## Use annotatePeaks.pl in HOMER software
### annotatePeaks.pl m6A.summit.bed hg38 -m RRACH.motif -size 1000 -hist 10 > outputfile.txt

### -m is the motif file generated by HOMER, if there are multiple motifs in one motif file, only motif of interest can be retained and others are deleted, -size is the window size on both sides of the consensus motif, -hist is the step of histogram. Graphing the output with EXCEL


# Analysis of m6A peak length 
## Extract m6A peak length, use the peak file (.xls file) in macs2 result.
### awk '{print $3-$2}' m6A.summit.bed > m6A.peak.length

### Visualization of exon length distribution or peak length distribution can be conducted by slight modification of peak.length.R, the maximum density of peak length can be returned by which.max() function in R.

# Draw metagene profile of m6A distribution
### metagene profile of unique sites in m6A-SEAL MeRIP-seq and their common sites are drawn by Guitar (as attached metagene.human.R)








