* Encoding: UTF-8.
* 04_04_SplitFile.

* Dataset: StateData.sav.

* ALL DATA AT ONCE.

* Bar chart.
GRAPH
  /BAR(SIMPLE)=COUNT BY per_reg.

* Descriptive statistics.
DESCRIPTIVES VARIABLES=per1 per2 per3 per4 per5
  /STATISTICS=MEAN STDDEV MIN MAX.

* SPLIT FILE: ORGANIZE OUTPUT BY GROUPS.

* Split file syntax: uses "separate by".
SORT CASES  BY gov.
SPLIT FILE SEPARATE BY gov.

* Bar chart.
GRAPH
  /BAR(SIMPLE)=COUNT BY per_reg.

* Descriptive statistics.
DESCRIPTIVES VARIABLES=per1 per2 per3 per4 per5
  /STATISTICS=MEAN STDDEV MIN MAX.

* SPLIT FILE: COMPARE GROUPS.

* Split file syntax: uses "layered by".
SORT CASES  BY gov.
SPLIT FILE LAYERED BY gov.

* Bar chart.
GRAPH
  /BAR(SIMPLE)=COUNT BY per_reg.

* Descriptive statistics.
DESCRIPTIVES VARIABLES=per1 per2 per3 per4 per5
  /STATISTICS=MEAN STDDEV MIN MAX.

* SPLIT FILE: ANALYZE ALL CASES, DO NOT CREATE GROUPS.

SPLIT FILE OFF.
