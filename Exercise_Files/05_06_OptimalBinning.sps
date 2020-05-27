* Encoding: UTF-8.
* 05_06_OptimalBinning.

* Optimal Binning.
OPTIMAL BINNING
  /VARIABLES GUIDE=per_reg BIN=per1 per2 per3 per4 per5 gc01 gc02 gc03 gc04 gc05 gc06 gc07 gc08 
    gc09 gc10 gc11 gc12 SAVE=YES (INTO=per1_bin per2_bin per3_bin per4_bin per5_bin gc01_bin gc02_bin 
    gc03_bin gc04_bin gc05_bin gc06_bin gc07_bin gc08_bin gc09_bin gc10_bin gc11_bin gc12_bin)
  /CRITERIA METHOD=MDLP PREPROCESS=EQUALFREQ (BINS=1000) FORCEMERGE=0 LOWERLIMIT=INCLUSIVE 
    LOWEREND=UNBOUNDED UPPEREND=UNBOUNDED
  /MISSING SCOPE=PAIRWISE
  /PRINT ENDPOINTS.

* Example boxplot; manually add reference line at 53.4.
EXAMINE VARIABLES=per4 BY per_reg
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.
