* Encoding: UTF-8.
* 08_02_OneSampleT.

* Dataset: 08_02_OneSampleT.sav.

FREQUENCIES VARIABLES=jobsat
  /FORMAT=NOTABLE
  /NTILES=4
  /STATISTICS=STDDEV MINIMUM MAXIMUM MEAN
  /HISTOGRAM NORMAL
  /ORDER=ANALYSIS.
  
T-TEST
  /TESTVAL=3
  /MISSING=ANALYSIS
  /VARIABLES=jobsat
  /CRITERIA=CI(.95).

