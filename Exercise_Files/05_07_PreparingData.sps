* Encoding: UTF-8.
* 05_07_PreparingData.

*Interactive Data Preparation.
RECODE per_reg (2 = 0) (3 = 1) (1 = 2) (ELSE=SYSMIS) 
  INTO per_reg_transformed. 
VARIABLE LEVEL per_reg_transformed (NOMINAL). 
COMPUTE per1_transformed = (((1/9.86297521754181)*(per1-49.6958333333333))+0). 
COMPUTE per2_transformed = (((1/9.19216609691053)*(per2-50.59375))+0). 
COMPUTE per3_transformed = (((1/10.0658998815571)*(per3-50.125))+0). 
COMPUTE per4_transformed = (((1/10.030951877433)*(per4-50.1854166666667))+0). 
COMPUTE per5_transformed = (((1/9.26711733240074)*(per5-49.4270833333333))+0). 
COMPUTE gc01_transformed = (((1/0.933887883949264)*(gc01-(-0.033625)))+0). 
COMPUTE gc02_transformed = (((1/0.932695878120961)*(gc02-0.094875))+0). 
COMPUTE gc03_transformed = (((1/0.925986627356223)*(gc03-0.021))+0). 
COMPUTE gc04_transformed = (((1/0.978042421513577)*(gc04-0.0344791666666667))+0). 
COMPUTE gc05_transformed = (((1/0.859800668594944)*(gc05-(-0.0240416666666666)))+0). 
COMPUTE gc06_transformed = (((1/0.725491728572387)*(gc06-(-0.0925833333333334)))+0). 
COMPUTE gc07_transformed = (((1/1.0064638220466)*(gc07-0.00997916666666664))+0). 
COMPUTE gc08_transformed = (((1/0.996944989483741)*(gc08-(-0.0220833333333333)))+0). 
COMPUTE gc09_transformed = (((1/1.01196576834993)*(gc09-(-0.0149166666666667)))+0). 
COMPUTE gc10_transformed = (((1/0.939732386079574)*(gc10-(-0.05275)))+0). 
COMPUTE gc11_transformed = (((1/1.00946252815282)*(gc11-0.043))+0). 
COMPUTE gc12_transformed = (((1/1.02433478846774)*(gc12-(-0.00783333333333331)))+0). 
RECODE region (3 = 0) (1 = 1) (2 = 2) (4 = 3) (ELSE=SYSMIS) 
  INTO region_transformed. 
VARIABLE LEVEL region_transformed (NOMINAL). 
RECODE gov (2 = 0) (1 = 1) (ELSE=SYSMIS) INTO gov_transformed. 
VARIABLE LEVEL gov_transformed (NOMINAL). 
VARIABLE ROLE 
  /NONE region gov per1 per2 per3 per4 per5 gc01 gc02 gc03 gc04 gc05 gc06 gc07 gc08 gc09 gc10 gc11 gc12 per_reg 
  /TARGET per_reg_transformed 
  /INPUT per1_transformed per2_transformed per3_transformed per4_transformed per5_transformed gc01_transformed 
        gc02_transformed gc03_transformed gc04_transformed gc05_transformed gc06_transformed gc07_transformed 
        gc08_transformed gc09_transformed gc10_transformed gc11_transformed gc12_transformed region_transformed 
        gov_transformed. 
EXECUTE. 
