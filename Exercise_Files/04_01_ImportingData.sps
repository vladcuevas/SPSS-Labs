* Encoding: UTF-8.
* 04_01_ImportingData.

* Datasets: 04_01_StateData.xlsx, 04_01_StateData.csv, 04_01_StateData_end.sav

* The FILE HANDLE command sets up an alias to a folder or file; in this case, 
* I'm creating an alias to the folder on my computer that has the data files 
* for this course. You should change the file path to match the one on your 
* computer. I got this path by using the import command in the SPSS menus 
* (any command will do), and copying pasting the syntax from the output.
FILE HANDLE SPSS_data /NAME = '/Users/bart/Dropbox/LinkedIn/SPSS_EssT_2019/data'.

GET DATA
  /TYPE=XLSX
  /FILE='SPSS_data/04_01_StateData.xlsx'
  /SHEET=name 'data'
  /CELLRANGE=FULL
  /READNAMES=ON
  /LEADINGSPACES IGNORE=YES
  /TRAILINGSPACES IGNORE=YES
  /DATATYPEMIN PERCENTAGE=95.0
  /HIDDEN IGNORE=YES.
EXECUTE. /* Reads data and runs transformations.
DATASET NAME StateDataXLSX WINDOW=FRONT. /* Optional window name.
