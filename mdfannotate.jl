#!/usr/bin/env julia
"""
    mdfannotate(inputfile,outputfile)

This function corrects MDF files for Delft3D FLOW: 
Delft3D FLOW creates MDF files missing lines "Fmtxxx = #FR#";
this function adds them in the correct places (after lines starting with "Filxxx = ")

By default, the input file is "rawmdf.mdf" and the annotated output file will be saved as "annomdf.mdf")
"""

function mdfannotate(inputfile, outputfile)
    open(inputfile, "r") do inp
        open(outputfile, "w") do otp
            for ln in eachline(inp)
                if ismatch(r"Fil(\w*)",ln)
                    write(otp,ln)
                    write(otp,"Fmt",ln[4:6]," = #FR#\n")
                else
                    write(otp,ln)
                end
            end
        end
    end
end

!isinteractive() && mdfannotate("rawmdf.mdf", "annomdf.mdf")
