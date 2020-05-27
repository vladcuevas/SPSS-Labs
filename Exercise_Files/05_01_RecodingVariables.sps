* Encoding: UTF-8.
* 05_01_RecodingVariables.

* RECODING DICOHOTOMOUS VARIABLES.

* Paste syntax from dialog.
RECODE Status (2=0) (ELSE=Copy) INTO Completed.
EXECUTE.

* Can restructure vertically.
RECODE Status 
  (2=0) 
  (ELSE=Copy) 
  INTO Completed.
EXECUTE.

* Can also use combined COMPUTE and IF statements.
COMPUTE Completed = 0.
IF (Status = 1) Completed = 1.
EXECUTE.

* It's a good idea to create new labels right away.
VARIABLE LABELS Completed "Is order completed?" .
VALUE LABELS Completed 0 "No" 1 "Yes" .

* COMBINING MULTIPLE GROUPS.

* Paste syntax from dialog.
RECODE Group (1=1) (2=2) (3 thru Highest=3) INTO Group_1_3.
EXECUTE.

VARIABLE LABELS Group_1_3 "Combined groups" .
VALUE LABELS 
  Group_1_3
    1 "Group 1"
    2 "Group 2"
    3 "Other groups" .
