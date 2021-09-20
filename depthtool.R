nb_reads = 40 # M of reads
read_size = 100 # bp
SR_or_PE = "SR"

# RNAseq
nb_reads = 40 # M of reads
read_size = 150 # bp
flowcell_size = 400 # M of reads
nb_samples = 24
SR_or_PE = "PE"





# go!
exome_size = 72*10^6 # bp
genome_size =  3.2*10^9 # bp

if (SR_or_PE == "SR") {
  fact = 1
} else {
  fact = 2
}

depth = nb_reads * 10^6 * fact * read_size 
mean_coverage = depth / (72 * 10^6)



cat(paste0("Number of reads per sample: ~", nb_reads, "M reads, with read size: ", SR_or_PE, read_size, ". \nFor transcriptome, it corresponds to a depth of ", depth/10^9, "GB and a mean coverage of ~", round(mean_coverage), "x.\n"))



