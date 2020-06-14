#!/bin/sh
# GRASS GIS script for plotting polar aspect plot
g.region raster=vt_relief_ETOPO1 -p
d.mon wx0
g.region raster=vt_relief_ETOPO1 -p
d.histogram map=vt_relief_ETOPO1 style=pie
