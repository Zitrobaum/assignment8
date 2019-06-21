## Aufgabe 8.1

# required package
library(Biostrings)
# first string
s1 <- "GAATC"
# second string
s2 <- "CATAC"
# create and show a substitution matrix with  match value 10 and mismatch value -5
sigma <- nucleotideSubstitutionMatrix(match = 10, mismatch = -5, baseOnly = TRUE)
sigma

# create and show an alignment of the two sequences, according to the substitution matrix sigma, with a linear gap penalty of -4
alignment <- pairwiseAlignment(s1, s2, substitutionMatrix = sigma, gapOpening = -4,
                               gapExtension = -4, scoreOnly = FALSE )
alignment


## Aufgabe 8.2

# required package
library(DECIPHER)
# example sequence file
  fas <- system.file("extdata", "50S_ribosomal_protein_L2.fas", package="DECIPHER")
# read and show dna strings
dna <- readDNAStringSet(fas)
dna
# align the translation products
AA <- AlignTranslation(dna, type="AAStringSet") 
# align the sequences directly without translation
DNA <- AlignSeqs(dna)
# view both alignments 
BrowseSeqs(AA, highlight=1) 
BrowseSeqs(DNA,highlight=1)
