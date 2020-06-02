* Encoding: UTF-8.
* 08_04_IndependentT.

* Dataset: 08_04_IndependentT.sav (demo2).

DESCRIPTIVES VARIABLES=wireless TO news 
  /STATISTICS=MEAN
  /SORT=MEAN (D).

* Need to define categories; can dichotomize.
T-TEST GROUPS=ownpc(0 1)
  /MISSING=ANALYSIS
  /VARIABLES=age income
  /CRITERIA=CI(.95).

EXAMINE VARIABLES=age BY ownpc
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.

EXAMINE VARIABLES=income BY ownpc
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.

