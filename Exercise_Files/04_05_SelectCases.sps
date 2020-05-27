* Encoding: UTF-8.
* 04_05_SelectCases.

* ALL DATA AT ONCE.

* List the currently selected states.
FREQUENCIES VARIABLES=State
  /ORDER=ANALYSIS.

* SELECT BY CONDITION.

* Select just the states that are "Relaxed and Creative" (per_reg = 2).
USE ALL.
COMPUTE filter_$=(per_reg = 2).
VARIABLE LABELS filter_$ 'per_reg = 2 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

* List the currently selected states.
FREQUENCIES VARIABLES=State
  /ORDER=ANALYSIS.

* * Select states where "Facebook" > 1 AND "GDPR" > 1 on Google Correlate.
USE ALL.
COMPUTE filter_$=(gc02 > 1 & gc05 > 1).
VARIABLE LABELS filter_$ 'gc02 > 1 & gc05 > 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

* List the currently selected states.
FREQUENCIES VARIABLES=State
  /ORDER=ANALYSIS.

* SELECT RANDOM SAMPLE OF CASES.

* In this example, select 5 states from the 48.
USE ALL.
do if $casenum=1.
compute #s_$_1=5.
compute #s_$_2=48.
end if.
do if  #s_$_2 > 0.
compute filter_$=uniform(1)* #s_$_2 < #s_$_1.
compute #s_$_1=#s_$_1 - filter_$.
compute #s_$_2=#s_$_2 - 1.
else.
compute filter_$=0.
end if.
VARIABLE LABELS filter_$ '5 from the first 48 cases (SAMPLE)'.
FORMATS filter_$ (f1.0).
FILTER  BY filter_$.
EXECUTE.

* List the currently selected states.
FREQUENCIES VARIABLES=State
  /ORDER=ANALYSIS.

* Select all cases; do not filter.
FILTER OFF.
USE ALL.
EXECUTE.
