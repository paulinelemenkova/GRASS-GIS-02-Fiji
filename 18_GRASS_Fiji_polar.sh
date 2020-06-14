#!/bin/sh
# GRASS GIS script for plotting polar aspect plot
g.region raster=vt_relief_ETOPO1 -p
d.mon wx0
d.polar aspect undef=0
d.text text="Polar diagram of aspect map:" color=blue size=3.0
d.text text="Fiji region, Pacific Ocean" color=blue size=3.0
