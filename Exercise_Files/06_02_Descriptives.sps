﻿* Encoding: UTF-8.
* 06_02_Descriptives.

* Dataset: 06_02_Descriptives_begin.sav, 6_02_Descriptives_end.sav.

* DEFAULT ANALYSIS FOR QUANTITATIVE VARIABLES .
DESCRIPTIVES VARIABLES=per1 per2 per3 per4 per5
  /STATISTICS=MEAN STDDEV MIN MAX.

* COMPARE TO FREQUENCIES.
FREQUENCIES VARIABLES=per1 per2 per3 per4 per5
  /FORMAT=NOTABLE
  /NTILES=4
  /STATISTICS=STDDEV MINIMUM MAXIMUM MEAN
  /HISTOGRAM NORMAL
  /ORDER=ANALYSIS.

* COMPUTE Z-SCORES.

DESCRIPTIVES VARIABLES=per1 per2 per3 per4 per5
  /SAVE
  /STATISTICS=MEAN STDDEV MIN MAX.

* But to actually get desriptives on the new variables,
  you have to run the command again.

DESCRIPTIVES VARIABLES=Zper1 Zper2 Zper3 Zper4 Zper5
  /STATISTICS=MEAN STDDEV MIN MAX.