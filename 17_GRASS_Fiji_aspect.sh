#!/bin/sh
# GRASS GIS script for plotting slope, aspect, profile and tangential curvature: Fiji
g.region raster=vt_relief_ETOPO1
r.slope.aspect elevation=vt_relief_ETOPO1 slope=slope aspect=aspect pcurvature=pcurv tcurvature=tcurv
# set color tables for output raster maps
# r.colors --help
d.mon wx0
r.colors map=aspect color=aspectcolr
d.rast aspect
d.grid size=2.5 color=white text_color=blue
d.legend raster=aspect title=Aspect,degree title_fontsize=8 font="Times New Roman"
d.text text="Aspect map" color=blue size=3
