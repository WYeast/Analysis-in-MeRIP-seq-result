library(Guitar)
## Input .bed files should have three columns, chrom(chr1, chr2...), chromStart, chromEnd. All the input files should locate in extdata directory within Guitar package directory
stBedFiles <- list(system.file("extdata", "m6A.seal.uniq.bed",package="Guitar"),
                   system.file("extdata", "m6A.seal.MeRIP.common.bed",package="Guitar"),
                   system.file("extdata", "MeRIP.uniq.bed",package="Guitar"))

GuitarPlot(txGenomeVer = "hg38",
	       headOrtail = FALSE,
	       stBedFiles = stBedFiles,
	       enableCI = FALSE,
	       pltTxType = c("mrna"),
           stGroupName = c("m6A.seal.uniq","m6A.seal.MeRIP.common","MeRIP.uniq"),
           miscOutFilePrefix = "m6A.seal.MeRIP.common.uniq.metagene",
	       )
