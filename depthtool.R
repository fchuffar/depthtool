nb_reads = 40 # M of reads
read_size = 100 # bp
SR_or_PE = "SR"


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
cat("\n")
cat("\n")
cat("\n")



# RNAseq
flowcell_size = 400 # M of reads
nb_samples = 24
read_size = 150 # bp
SR_or_PE = "PE"
nb_reads_per_sample =  flowcell_size/nb_samples

depth2 = nb_reads_per_sample * 10^6 * fact * read_size 
mean_coverage2 = depth2 / exome_size
cat(paste0("If I'm not mistaken, a flowcell of ", signif(flowcell_size,3), "M reads for ", nb_samples, " samples gives an average of about ", signif(nb_reads_per_sample, 3), " M reads per sample. \nFor transcriptome (", exome_size/10^6, " Mb) with read size: ", SR_or_PE, read_size, ", it means a depth of ", signif(depth2,3)/10^9, "GB and a mean coverage of ~", round(mean_coverage2), "x.\n"))

