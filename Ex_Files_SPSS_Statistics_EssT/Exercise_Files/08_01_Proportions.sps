* Encoding: UTF-8.
* 08_01_Proportions.

* Dataset: 08_01_Proportions.sav.

* GRAPH DATA.

FREQUENCIES VARIABLES=marital retire 
  /BARCHART FREQ 
  /FORMAT=DFREQ 
  /ORDER=ANALYSIS.

* PROPORTION TEST.

*Nonparametric Tests: One Sample. 
NPTESTS 
  /ONESAMPLE TEST (marital retire) 
  /MISSING SCOPE=ANALYSIS USERMISSING=EXCLUDE
  /CRITERIA ALPHA=0.05 CILEVEL=95.
