* Encoding: UTF-8.
* 04_02_VariableLabels.
  
VARIABLE LABELS
  state_code "State Code"
  region "Region of US"
  gov "Governor"
  per_reg "Personality Region"
  per1 "Extraversion"
  per2 "Agreeableness"
  per3 "Conscientiousness"
  per4 "Neuroticism"
  per5 "Openness"
  gc01 "Instagram"
  gc02 "Facebook"
  gc03 "Retweet"
  gc04 "Entrepreneur"
  gc05 "GDPR"
  gc06 "Privacy"
  gc07 "University"
  gc08 "Mortgage"
  gc09 "Volunteering"
  gc10 "Museum"
  gc11 "Scrapbook"
  gc12 "Modern Dance" .

* It is also possible to rename the variables, which is separate from labels.
* Format: oldname = newname.
* RENAME VARIABLES
  per1 = Extraversion
  per2 = Agreeableness
  per3 = Conscientiousness
  per4 = Neuroticism
  per5 = Openness .

* Restoring original variable names.
* RENAME VARIABLES
  Extraversion = per1
  Agreeableness = per2
  Conscientiousness = per3
  Neuroticism = per4
  Openness = per5 .

