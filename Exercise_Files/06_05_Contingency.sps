* Encoding: UTF-8.
* 06_05_Contingency.

* Dataset: StateData.sav.

* Use Descriptive Statistics > Crosstabs... and NOT Tables...

* DEFAULT CROSSTABS.

* Two tables of two dimensions each.
CROSSTABS
  /TABLES=region gov BY per_reg
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.
* Note that 48 observations is not enough for the first table, 
  with many observed (and expected) frequencies below 5.

* A single table of three dimensions.
CROSSTABS
  /TABLES=region BY per_reg BY gov
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

* CROSSTABS WITH OPTIONS

* Adds row and column percentages, chi-squared test, and a
  grouped bar chart.
CROSSTABS
  /TABLES=region BY per_reg
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT ROW COLUMN 
  /COUNT ROUND CELL
  /BARCHART.
