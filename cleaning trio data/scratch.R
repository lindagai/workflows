The indexing part of the workflow is now out-of-date, as the tabix module seems to have disappeared from JHPCE after the update last week. I believe bcftools index trio.data.vcf.bgz works just as well as tabix -p vcf trio.data.vcf.bgz, but have not tested it yet.

# Phasing

Haplotype phasing allows us to identify the alleles that are co-located on the same chromosome in 1 individual (an excellent overview of the process can be found [here](https://data-science-sequencing.github.io/Win2018/lectures/lecture10/)), in addition to imputing missing genotypes and alleles. Most of the rare variant analysis methods used here require the data to be phased for the variants to be weighted appropriately, so phasing is generally recommended.

## Phasing the dataset

Phasing can be done in the R console with the below code. For the 8q24 file (~4.4 MB), phasing takes approximately 45 minutes.

```{r,eval = FALSE}
phase.command<-paste0("java -Xmx10000m -jar ", filepath.beagle4,
                      " gt=",filepath.vcf,
                      " ped=",filepath.ped,
                      " out=",filepath.phased.vcf)
phase.command

system(phase.command)
```




## Reformatting BEAGLE-phased vcf
Note that when BEAGLE 4.0 phases a VCF, it changes the "/" character that delimits the 2 alleles of one genotype into a "|" and distinguishes between `"0/1"` and `"1/0"`.

```{r,eval = FALSE}
filepath.phased.vcf<-"/users/lgai/8q24_project/data/processed_data/vcfs/8q24.cleaned.07_1_19.phased.vcf.gz"
hg.assembly<-"hg19"
vcf <- readVcf(filepath.phased.vcf, hg.assembly)

table(geno(vcf)$GT)
```
```{r,echo = FALSE}
filepath.table.phased<-"/Users/lindagai 1/Documents/classes/4th year/Research/rvtrio/data/table.phased.vcf.RDS"
table.phased<-readRDS(filepath.table.phased)
table.phased
```
