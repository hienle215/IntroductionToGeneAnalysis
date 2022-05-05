setwd("~/IntroductionToAnalysisGene")
VCaP_intersect <- read.table(file = 'VCaP_intersect.tsv', sep = '\t', header = FALSE)
View(VCaP_intersect)
EP156T_intersect <- read.table(file = 'EP156T_intersect.tsv', sep = '\t', header = FALSE)
nrow(EP156T_intersect)
VCaP_visualization_2 <- read.csv(file = 'VCaP_visualization_2.csv', sep = '', header = FALSE)
View(VCaP_visualization_2)
EP156T_visualization_2 <- read.csv(file = 'EP156T_visualization_2.csv', sep = '', header = FALSE)
View(EP156T_visualization_2)
VCaP_visualization_2$V1 <- VCaP_visualization_2$V1 *100 / nrow(VCaP_intersect)
EP156T_visualization_2$V1 <- EP156T_visualization_2$V1 *100 / nrow(EP156T_intersect)
cell_lines_TF = merge(x=VCaP_visualization_2, y = EP156T_visualization_2, by= 'V2', all = TRUE)
cell_lines_TF
setNames(cell_lines_TF, c("TF", "VCaP", "EP156T"))
cell_lines_TF
cell_lines_TF_Sorted <- cell_lines_TF[order(-cell_lines_TF$V1.x, -cell_lines_TF$V1.y),]
View(cell_lines_TF_Sorted)
colnames(cell_lines_TF_Sorted) <- c("TF", "VCaP", "EP156T")
View(cell_lines_TF)
write.table(cell_lines_TF_Sorted, file='cell_lines_TF_Sorted.tsv', quote=FALSE, sep='\t')

##barplot
VCaP_value <- as.numeric(cell_lines_TF_Sorted$VCaP)
EP156T_value <- as.numeric(cell_lines_TF_Sorted$EP156T)
all_vec <- c(VCaP_value, EP156T_value)
data_matrix <- matrix(all_vec, nrow = 2, byrow = TRUE)
colnames(data_matrix) <- cell_lines_TF_Sorted$TF
colours = c("green","darkgreen")
barplot(data_matrix, xlab = "Transcription factor", ylab = "Percentages(%)", ylim = c(0,25), col = colours, beside = TRUE, srt = 90)
legend('topright',fill=colours,legend=c('VCaP','EP156T'))

View(data_matrix)
