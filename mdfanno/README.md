This is a Julia function that annotates MDF files for Delft3D FLOW so that they are properly formatted.

    mdfannotate(inputfile,outputfile)

Version 4.01.01.rc.03 of Delft3D creates FLOW MDF files missing lines  "Fmtxxx = #FR#";
this script creates an new file that adds these lines in the correct places (after lines starting with "Filxxx = ") and with the correct values in place of 'xxx'

By default, the code uses an input file called "rawmdf.mdf" and generates an annotated output file "annomdf.mdf"
