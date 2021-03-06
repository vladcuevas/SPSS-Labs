* Encoding: UTF-8.
* 08_06_TwoWayANOVA.

* Dataset: 08_06_TwoWayANOVA.sav.

* BOXPLOTS.

EXAMINE VARIABLES=Rating BY Content BY Platform
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.

* BAR CHARTS. 

GRAPH
  /BAR(GROUPED)=MEAN(Rating) BY Content BY Platform
  /INTERVAL CI(95.0).

* ANOVA.

UNIANOVA Rating BY Platform Content
  /METHOD=SSTYPE(3)
  /INTERCEPT=INCLUDE
  /POSTHOC=Content(TUKEY) 
  /PLOT=PROFILE(Platform*Content) TYPE=LINE ERRORBAR=CI MEANREFERENCE=YES YAXIS=0
  /EMMEANS=TABLES(Platform*Content) 
  /PRINT ETASQ OPOWER
  /CRITERIA=ALPHA(.05)
  /DESIGN=Platform Content Platform*Content.
