This is a Julia script that annotates MDF files for Delft3D FLOW so that they are properly formatted.

Version 4.01.01.rc.03 of Delft3D creates FLOW MDF files missing "Fmtxxx = #FR#";
this script creates an new file that adds these lines in the correct places (after lines starting with "Filxxx = ") and with the correct values in place of 'xxx'

By default, the code works with an initial file called "rawmdf.mdf" and generates an annotated file "annomdf.mdf"
