* Encoding: UTF-8.
* 06_04_Correlations.

* Dataset: StateData.sav.

* DEFAULT ANALYSIS.

CORRELATIONS
  /VARIABLES=per1 TO gc12
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

* Note that the sample size of 48 is much too small for this many 
  correlations; the risk of false positives (Type I errors) would
  be overwhelming with the 136 unique correlations calculated.

* ANALYSIS WITH OPTIONS.

* Includes descriptive statistics, sum of squares,
  cross-products, covariance.
CORRELATIONS
  /VARIABLES=per1 TO gc12
  /PRINT=TWOTAIL NOSIG
  /STATISTICS DESCRIPTIVES XPROD
  /MISSING=PAIRWISE.

* The same dialog produces this command for nonparametric correlations: 
  - Kendall's tau-b (τ) or the Kendall rank correlation coefficient, 
    which measures the ordinal association between two measured
    quantities and adjusts for ties;
  - Spearman's rho (ρ) or Spearman's rank correlation coefficient,
    which assesses how well the relationship between two variables
    can be described using a monotonic function.
NONPAR CORR
  /VARIABLES=per1 TO gc12
  /PRINT=BOTH TWOTAIL NOSIG
  /MISSING=PAIRWISE.
