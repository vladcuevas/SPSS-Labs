﻿* Encoding: UTF-8.
* 06_01_Frequencies.

* Dataset: StateData.sav.

* DEFAULT ANALYSIS FOR CATEGORICAL VARIABLES.

FREQUENCIES VARIABLES=region gov per_reg
  /ORDER=ANALYSIS.

* Add bar charts, display in descending frequencies.
FREQUENCIES VARIABLES=region gov per_reg
  /BARCHART FREQ
  /FORMAT=DFREQ
  /ORDER=ANALYSIS.

* QUANTITATIVE VARIABLES.

FREQUENCIES VARIABLES=per1 per2 per3 per4 per5
  /FORMAT=NOTABLE
  /NTILES=4
  /STATISTICS=STDDEV MINIMUM MAXIMUM MEAN
  /HISTOGRAM NORMAL
  /ORDER=ANALYSIS.