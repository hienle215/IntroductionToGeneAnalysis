Week1

# Drag the words to correct positions:
SNPs include: non-codng region and coding region. Coding region consists synonymouse and non-synonymous (missense and nonsense).
The standards file format for presenting the reads is FASTQ.
FastQC software can be used to evaluate sample quality. Basic of high-thorugh sequencing data ana analysis is stored in FastQC file.
The standards human-readable file format for representing sequence alingments against the reference is SAM.
BAM is a compressed, binary file format for representing sequence alignments agianst the reference.

less command: set tab positions to multiples of line (i.g -x30, -x20..) of the file.
head command: checking the head of file.
tail command: checking the final part of file.
wc command: word count functions (wc commad has various options: -l, -c, -m).
wc -c : count word.
wc -l : count line.
wc -m : print the character counts.

Convert .sam file to .bam file
samtools view -o ezh2.bam -O ezh2.sam

samtools provides a basis visualization functionality to view the aligned reads. Here, I take a brief look at a give region in ezh2 gene.Run the following 
command in the termnal
command: samtools tview command gives the visulazation of deletion and interstation in unix environment. 

samtools tview -p 7:148505961 ezh2.bam/student_data/references/human_g1k_v37.fasta
samtools tview -p 7:148543562-148543960 ezh2.bam /student_data/references/human_g1k_v37.fasta 

-p: to see the chromosome location
