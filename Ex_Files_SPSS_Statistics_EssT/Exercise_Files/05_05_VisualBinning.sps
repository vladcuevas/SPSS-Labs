* Encoding: UTF-8.
* 05_05_VisualBinning.

* EQUAL WIDTH INTERVALS

* Visual Binning.
*gc06.
RECODE  gc06 (MISSING=COPY) (LO THRU -3=1) (LO THRU -2=2) (LO THRU -1=3) (LO THRU 0=4) (LO THRU 
    1=5) (LO THRU 2=6) (LO THRU HI=7) (ELSE=SYSMIS) INTO gc06_bin1.
VARIABLE LABELS  gc06_bin1 'Privacy (Equal Width Intervals)'.
FORMATS  gc06_bin1 (F5.0).
VALUE LABELS  gc06_bin1 1 '<= -3.000' 2 '-2.999 - -2.000' 3 '-1.999 - -1.000' 4 '-.999 - .000' 5 
    '.001 - 1.000' 6 '1.001 - 2.000' 7 '2.001+'.
VARIABLE LEVEL  gc06_bin1 (ORDINAL).
EXECUTE.

* EQUAL PERCENTILES

* Visual Binning.
*gc06.
RECODE  gc06 (MISSING=COPY) (LO THRU -0.689=1) (LO THRU -0.258=2) (LO THRU 0.062=3) (LO THRU 
    0.436=4) (LO THRU HI=5) (ELSE=SYSMIS) INTO gc05_bin2.
VARIABLE LABELS  gc05_bin2 'Privacy (Quintiles)'.
FORMATS  gc05_bin2 (F5.0).
VALUE LABELS  gc05_bin2 1 'Quintile 1' 2 'Quintile 2' 3 'Quintile 3' 4 'Quintile 4' 5 'Quintile 5'.
VARIABLE LEVEL  gc05_bin2 (ORDINAL).
EXECUTE.

* CUTPOINTS AT MD AND SD

* Visual Binning.
*gc06.
RECODE  gc06 (MISSING=COPY) (LO THRU -1.54356679047811=1) (LO THRU -0.818075061905720=2) (LO THRU 
    -0.0925833333333332=3) (LO THRU 0.632908395239054=4) (LO THRU 1.35840012381144=5) (LO THRU HI=6) 
    (ELSE=SYSMIS) INTO gc06_bin3.
VARIABLE LABELS  gc06_bin3 'Privacy (M&SD)'.
FORMATS  gc06_bin3 (F5.0).
VALUE LABELS  gc06_bin3 1 'z < -2' 2 '-2 < z < -1' 3 '-1 < z < 0' 4 '0 < z < 1' 5 '1 < z < 2' 6 'z > 2'.
VARIABLE LEVEL  gc06_bin3 (ORDINAL).
EXECUTE.

* Note: You can automatically create a new variable with z-scores through the "Descriptives" dialog.
