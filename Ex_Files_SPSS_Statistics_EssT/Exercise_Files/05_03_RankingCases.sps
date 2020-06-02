* Encoding: UTF-8.
* 05_03_RankingCases.

* CHECK FOR OUTLIERS.

EXAMINE VARIABLES=gc01 TO gc12 
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.

* Privacy (gc06) has a very compressed range with outliers on both ends.

* RANK CASES ON PRIVACY (GC06).

* Default ranking.
RANK VARIABLES=gc06 (A) 
  /RANK 
  /PRINT=YES 
  /TIES=MEAN.

*Ranking with option.
RANK VARIABLES=gc06 (D) 
  /NORMAL 
  /RANK 
  /NTILES(5) 
  /PERCENT 
  /PRINT=YES 
  /TIES=LOW 
  /FRACTION=BLOM.

* Creates several new variables:
   Ngc06: Normal scores
   Rgc06: Ranks (1-n)
   NTI001: Ntiles (5 in this case)
   Pgc06: Fractional 
   
* COMPARE RANKINGS.

* Original variable.
  EXAMINE VARIABLES=gc06
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.

* Rank (1-48).
EXAMINE VARIABLES=Rgc06
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.

* Ranks rescaled on 0-100 scale.
EXAMINE VARIABLES=Pgc06
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.

* z scores corresponding to the estimated cumulative proportion.
EXAMINE VARIABLES=Ngc06
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.

* Quintiles are evenly spead out.
EXAMINE VARIABLES=NTI001
  /COMPARE VARIABLE
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /MISSING=LISTWISE.
