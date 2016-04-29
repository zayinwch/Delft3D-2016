#!/usr/bin/env julia
"""
    gedata_reformat(inputfile,outputfile)

Converts a Google Earth kml file (with depth data added in a third, comma-separated column) into a txt file suitable for use as bathymetry data in Delft3D

inputfile is the name of the kml file
outputfile is the name of the new txt file

An input kml file should be for a path or a polygon at a single depth on Google 
Earth

"""
function gedata_reformat(inputfile,outputfile)
    open(inputfile,"r") do inp
        open(outputfile,"w") do otp
            for ln in eachline(inp)
                write(otp,replace(strip(ln)," ","\n"))
            end
        end
    end
end

!isinteractive() && gedata_reformat("motobuchannel_10m.kml","motobuchannel_10m.txt")
