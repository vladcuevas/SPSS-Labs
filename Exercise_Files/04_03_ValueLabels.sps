* Encoding: UTF-8.
* 04_03_ValueLabels.

* Value labels for StateData.sav.
VALUE LABELS
  region
    1 "West"
    2 "Midwest"
    3 "Northeast"
    4 "South" /
  gov
    1 "Republican"
    2 "Democrat" /
  per_reg
    1 "Friendly and Conventional"
    2 "Relaxed and Creative"
    3 "Temperamental and Uninhibited" .

* Example of how to specify more than one variable for a set of labels.
* VALUE LABELS
  var1
    1 "Label 1"
    2 "Label 2"
    3 "Label 3" /
  male female employed
    0 "No"
    1 "Yes" /
  q01 TO q12
    1 "Strongly Disagree"
    2 "Disagree"
    3 "Neutral"
    4 "Agree"
    5 "Strongly Agree" /
  scale1 TO scale5 scale7 TO scale9
    0 "Not at all"
    10 "Completely" .
