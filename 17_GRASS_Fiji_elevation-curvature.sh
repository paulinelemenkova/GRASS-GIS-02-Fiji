#!/bin/sh
# GRASS GIS script for plotting slope, aspect, profile and tangential curvature: Fiji
d.mon wx0
g.region raster=vt_relief_ETOPO1
r.slope.aspect elevation=vt_relief_ETOPO1 slope=slope aspect=aspect pcurvature=pcurv tcurvature=tcurv
# set color tables for output raster maps
# r.colors --help
# 1st map
# display aspect map
d.frame -c frame=first at=0,100,0,50 --overwrite
r.colors map=vt_relief_ETOPO1 color=elevation
d.rast vt_relief_ETOPO1
d.grid size=2.5 color=white text_color=white
#d.legend raster=vt_relief_ETOPO1 title=Elevation,degree title_fontsize=8 font="Times New Roman"
d.text text="Elevation map" color=blue bgcolor=white size=3
# 2nd map
# display profile curvature map
d.frame -c frame=second at=0,100,50.1,100 --overwrite
r.colors map=pcurv color=rstcurv
d.rast pcurv
#r.contour vt_relief_ETOPO1 out=ETOPO1_2000 step=2000 --overwrite
#d.vect ETOPO1_2000 color='76:175:252' width=0
d.vect ETOPO1_2000 color=brown width=0
d.grid size=2.5 color=white border_color=red width=0.1 fontsize=8 text_color=red bgcolor=white
#d.legend raster=pcurv title=Curvature title_fontsize=8 font="Times New Roman"
d.text text="Topographic curvature" color=blue size=3

