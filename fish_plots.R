
library(fishplot)

################################################################################################################################
################################################################################################################################
###
###					FILE file1.pdf
###

#### 
#provide a list of timepoints to plot
#You may need to add interpolated points to end up with the desired
#visualization. Example here was actually sampled at days 0 and 150
timepoints=c(0, 100, 200, 210)
value_multipy <- 35;   ### To incerese or decrease size of the graphics

#provide a matrix with the fraction of each population
#present at each timepoint
### tRNA_without_trat - 3 (MINUS)
### tRNA_with_trat
# IMPORTANT, the sum with "no parents" cannot pass 100
vect_temp <- c(
#  0.81, 0.50421, 0.21000, 0.07143, 0.00010, 0.00010, 0.00010, 0.96, 0.50471, 0.24667, 0.15143, 0.00010, 0.00010, 0.00010,
  1.01, 0.50421, 0.21000, 0.07143, 1.16, 0.50471, 0.24667, 0.15143, 0.01010,
  0.82, 0.49000, 0.07667, 0.02571, 1.17, 0.50294, 0.22333, 0.18857, 0.01010,
  1.00, 0.49529, 0.20667, 0.07714, 1.55, 0.52000, 0.23000, 0.19429, 0.38500,
  1.00, 0.49529, 0.20667, 0.07714, 1.55, 0.52000, 0.23000, 0.19429, 0.38500)
# <sum As>,<A1>,    <A2>,    <A3>, <sum Bs>,<B1>,    <B2>,    <B3>,    <B4>

frac.table = matrix(
  vect_temp * value_multipy,
  ncol=length(timepoints))   ### time

#provide a vector listing each clone's parent
#(0 indicates no parent)
# IMPORTANT, the sum with "no parents" cannot pass 100
parents = c(0, 1, 1, 1, 
            0, 5, 5, 5, 5)
length(parents)

#create a fish object
fish = createFishObject(frac.table, parents, timepoints=timepoints, fix.missing.clones=TRUE,
                        clone.annots=c("Mock", "Group 1", "Group 2", "Group 3",
                                       "tRNASer", "Group 1", "Group 2", "Group 3", "Group 4"))
fish = setCol(fish,c("#D3D3D3", "#Aff7f0", "#59d6d8", "#319294",
                     "#888888", "#Aff7f0", "#59d6d8", "#319294", "#0088a7"))

#calculate the layout of the drawing
fish = layoutClones(fish)

#draw the plot, using the splining method (recommended)
#and providing both timepoints to label and a plot title
fishPlot(fish,shape="spline",
         cex.title=1.5, vlines=c(0, 100, 200), 
         vlab=c("T1", "T2", "T3"))


################################################################################################################################
################################################################################################################################
################################################################################################################################
################################################################################################################################
################################################################################################################################
################################################################################################################################
################################################################################################################################

################################################################################################################################
################################################################################################################################
###
###					FILE file2.pdf
###

### Cisplatin 
### T1 do primeiro
#### 
#provide a list of timepoints to plot
#You may need to add interpolated points to end up with the desired
#visualization. Example here was actually sampled at days 0 and 150
timepoints=c(0, 100, 200, 210)
value_multipy <- 35;   ### with 3 raise s an error

#provide a matrix with the fraction of each population
#present at each timepoint
### tRNA_sem_trat - 3 (MINUS)
### tRNA_com_trat
# IMPORTANT, the sum with "no parents" cannot pass 100
vect_temp <- c(
#  0.81, 0.50421, 0.21000, 0.07143, 0.00010, 0.00010, 0.00010, 0.96, 0.50471, 0.24667, 0.15143, 0.00010, 0.00010, 0.00010,
  1.01, 0.50421, 0.21000, 0.07143, 1.50, 0.50471, 0.24667, 0.15143, 0.01010, 0.01010, 0.01010,
  0.75, 0.48429, 0.02667, 0.00010, 1.70, 0.51059, 0.22000, 0.21000, 0.01010, 0.01010, 0.32000,
  0.73, 0.49929, 0.02000, 0.00010, 2.02, 0.51471, 0.24000, 0.20857, 0.43000, 0.08500, 0.32000,
  0.73, 0.49929, 0.02000, 0.00010, 2.02, 0.51471, 0.24000, 0.20857, 0.43000, 0.08500, 0.32000)
# <sum As>,<A1>,    <A2>,    <A3>, <sum Bs>,<B1>,    <B2>,    <B3>,    <B4>,    <B5>,    <B6>
frac.table = matrix(
  vect_temp * value_multipy,
  ncol=length(timepoints))   ### time

#provide a vector listing each clone's parent
#(0 indicates no parent)
# IMPORTANT, the sum with "no parents" cannot pass 100
parents = c(0, 1, 1, 1,
            0, 5, 5, 5, 5, 5, 5)
length(parents)

#create a fish object
fish = createFishObject(frac.table, parents, timepoints=timepoints, fix.missing.clones=TRUE,
                        clone.annots=c("Mock", "Group 1", "Group 2", "Group 3",
                                       "tRNASer", "Group 1", "Group 2", "Group 3", "Group 4", "Group 5", "Group 6"))
fish = setCol(fish,c("#D3D3D3", "#Aff7f0", "#59d6d8", "#319294",
                     "#888888", "#Aff7f0", "#59d6d8", "#319294", "#0088a7", "#00586d", "#012d38"))

#calculate the layout of the drawing
fish = layoutClones(fish)

#draw the plot, using the splining method (recommended)
#and providing both timepoints to label and a plot title
#fishPlot(fish,shape="spline",title.btm="Cisplatin",
fishPlot(fish,shape="spline",         
         cex.title=1.5, vlines=c(0, 100, 200), 
         vlab=c("T1", "T2+Cisplatin", "T3+Cisplatin"))

################################################################################################################################
################################################################################################################################
################################################################################################################################
################################################################################################################################
################################################################################################################################
################################################################################################################################
################################################################################################################################
#####
#####			Other example
#####

### Mock 
#### 
#provide a list of timepoints to plot
#You may need to add interpolated points to end up with the desired
#visualization. Example here was actually sampled at days 0 and 150
timepoints=c(0, 100, 200, 300, 400, 410)
value_multipy <- 45;   ### with 3 raise s an error

#provide a matrix with the fraction of each population
#present at each timepoint
### tRNA_sem_trat - 3 (MINUS)
### tRNA_com_trat
# IMPORTANT, the sum with "no parents" cannot pass 100
zero_value <- 0.01;
sum_margin <- 0.44;
vect_temp <- c(
  1.1 + sum_margin, 0.6919435396,       0.127272727272727, 0.1225,      zero_value,          zero_value,          zero_value,
  1.2 + sum_margin, 0.689066232356138,  0.247272727272727, 0.1915,      zero_value,          zero_value,          zero_value,
  1.7 + sum_margin, 0.6849347826086995, 0.304545454545455, zero_value,  0.528,               0.244310344827586,   zero_value,
  1.1 + sum_margin, 0.688163043478264,  0.11,              0.115,       zero_value,          zero_value,          zero_value,
  1.7 + sum_margin, 0.685352877307278,  0.1055,            zero_value,  0.506,               zero_value,          0.3373,
  1.7 + sum_margin, 0.685352877307278,  0.1055,            zero_value,  0.506,               zero_value,          0.3373)
frac.table = matrix(
  vect_temp * value_multipy,
  ncol=length(timepoints))   ### time

#provide a vector listing each clone's parent
#(0 indicates no parent)
# IMPORTANT, the sum with "no parents" cannot pass 100
parents = c(0, 1, 1, 1, 1, 1, 1)
length(parents)

#create a fish object
fish = createFishObject(frac.table, parents, timepoints=timepoints, fix.missing.clones=TRUE,
                        clone.annots.cex=1.1, clone.annots=c("Mock", "Group 1", "Group 2", "Group 3", "Group 4", "Group 5", "Group 6"))
fish = setCol(fish,c("#888888", "#Aff7f0", "#59d6d8", "#319294", "#0088a7", "#00586d", "#012d38"))

#calculate the layout of the drawing
fish = layoutClones(fish)

#draw the plot, using the splining method (recommended)
#and providing both timepoints to label and a plot title
#fishPlot(fish,shape="spline",title.btm="Cisplatin",
fishPlot(fish,shape="spline", title.btm="MOCK",
         cex.title=2.0, vlines=c(0, 100, 200, 300, 400), 
         vlab=c("T1", "T2", "T2+Cis", "T3", "T3+Cis"),
         cex.vlab=1.5)



################################################################################################################################
################################################################################################################################
################################################################################################################################
################################################################################################################################
################################################################################################################################
################################################################################################################################
################################################################################################################################
#####
#####			Other example
#####

### tRNASer 
#### 
#provide a list of timepoints to plot
#You may need to add interpolated points to end up with the desired
#visualization. Example here was actually sampled at days 0 and 150
timepoints=c(0, 100, 200, 300, 400, 410)
value_multipy <- 45;   ### with 3 raise s an error

#provide a matrix with the fraction of each population
#present at each timepoint
### tRNA_sem_trat - 3 (MINUS)
### tRNA_com_trat
# IMPORTANT, the sum with "no parents" cannot pass 100
zero_value <- 0.01;
sum_margin <- 0.43;
vect_temp <- c(
  1.1 + sum_margin, 0.693260869565221, 0.178019801980198, 0.172222222222222,         zero_value,          zero_value,          zero_value,
  1.2 + sum_margin, 0.694983713355051, 0.174158415841584, 0.162222222222222,         zero_value,          zero_value,          zero_value,
  1.7 + sum_margin, 0.695222584147668, 0.193861386138614,        zero_value,  0.252777777777778,   0.293692307692308,          zero_value,
  1.1 + sum_margin, 0.699358695652177, 0.192970297029703,  0.16962962962963,         zero_value,          zero_value,          zero_value,
  1.7 + sum_margin, 0.701639522258417, 0.213267326732673,        zero_value,  0.265833333333333,          zero_value,   0.253333333333333,
  1.7 + sum_margin, 0.701639522258417, 0.213267326732673,        zero_value,  0.265833333333333,          zero_value,   0.253333333333333)
frac.table = matrix(
  vect_temp * value_multipy,
  ncol=length(timepoints))   ### time

#provide a vector listing each clone's parent
#(0 indicates no parent)
# IMPORTANT, the sum with "no parents" cannot pass 100
parents = c(0, 1, 1, 1, 1, 1, 1)
length(parents)

#create a fish object
fish = createFishObject(frac.table, parents, timepoints=timepoints, fix.missing.clones=TRUE,
                        clone.annots=c("tRNASer", "Group 1", "Group 2", "Group 3", "Group 4", "Group 5", "Group 6"),
                        clone.annots.cex=1.1, clone.annots.offset=0.4)
fish = setCol(fish,c("#888888", "#Aff7f0", "#59d6d8", "#319294", "#0088a7", "#00586d", "#012d38"))

#calculate the layout of the drawing
fish = layoutClones(fish)

#draw the plot, using the splining method (recommended)
#and providing both timepoints to label and a plot title
#fishPlot(fish,shape="spline",title.btm="Cisplatin",
fishPlot(fish, shape="spline", title.btm="tRNASer",
         cex.title=2.0, vlines=c(0, 100, 200, 300, 400), 
         vlab=c("T1", "T2", "T2+Cis", "T3", "T3+Cis"),
         cex.vlab=1.5,
         )

