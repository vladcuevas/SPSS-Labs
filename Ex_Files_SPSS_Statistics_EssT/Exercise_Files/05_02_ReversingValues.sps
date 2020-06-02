* Encoding: UTF-8.
* 05_02_ReversingValues.

* Recoding a variable with more values.
RECODE Scale_0_6 (0=6) (1=5) (2=4) (3=3) (4=2) (5=1) (6=0) INTO Scale_0_6_r.
EXECUTE.

* For 0-k scale, use k - X.
COMPUTE Scale_0_6_r = 6 - Scale_0_6 .
EXECUTE.

* For 1-k scale, use (k+1) - X.
COMPUTE Scale_1_7_r = 8 - Scale_1_7 .
EXECUTE.

* For negative to positive scale, use either 0 - X or X*-1.
COMPUTE Scale_Neg_Pos_r = 0 - Scale_Neg_Pos .
EXECUTE.
