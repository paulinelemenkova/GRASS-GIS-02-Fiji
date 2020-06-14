#!/bin/sh
# GRASS GIS script for geoid bathymetry grid (vt_relief.nc) for Vanuatu Trench
r.in.gdal -o vvtc_curv.grd out=vvtc_curv
g.list rast
d.mon wx0
d.erase
#g.region res=0.001
g.region raster=vvtc_curv -p
r.colors -n vvtc_curv col=roygbiv
# r.colors --help
d.rast vvtc_curv
#d.redraw
r.contour vvtc_curv out=Curv10 step=10 --overwrite
d.vect Curv10 color='blue' width=0
d.grid size=2.5 color=white border_color=red width=0.1 fontsize=8 text_color=red bgcolor=white
d.legend raster=vvtc_curv range=-200,200 title=Vert_grav,mGal title_fontsize=8 font="Times New Roman" fontsize=8 -t -b bgcolor=white label_step=5 border_color=gray thin=8
d.text text="Vertical free-air gravity" color=blue bgcolor=white size=1.0 font="Times New Roman" linespacing=0.4
