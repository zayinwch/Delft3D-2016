"""
This script is written in Julia
It annotates MDF files for Delft3D FLOW: 
Delft3D FLOW creates MDF files missing "Fmtxxx = #FR#";
this program adds them in the correct places (after lines starting with "Filxxx = ")

By default, the input file is "rawmdf.mdf" and the annotated output file will be saved as "annomdf.mdf")
"""

open("rawmdf.mdf","r") do inp
         open("annomdf.mdf","w") do otp
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
