#!/bin/sh
# GRASS GIS script for geoid model grid (vvtc_geo.nc) for Vanuatu & Vityaz trenches, Fiji
r.in.gdal -o vvtc_geo.nc out=vvtc_geo
g.list rast
d.mon wx0
d.erase
g.region res=0.001
g.region raster=vvtc_geo -p
r.colors vvtc_geo col=roygbiv
d.rast vvtc_geo
d.redraw
r.contour vvtc_geo out=Geoid10 step=10 --overwrite
d.vect Geoid10 color='blue' width=0
d.grid size=2.5 color=white border_color=yellow width=0.1 fontsize=8 text_color=blue
r.info vvtc_geo
d.legend raster=vvtc_geo range=-200,200 title=Geoid,mGal title_fontsize=8 font=Helvetica fontsize=8 -t -b bgcolor=white label_step=5 border_color=gray thin=8
d.text text="Geoid: EGM96 grid" color=yellow bgcolor=gray size=1.0 font="Times New Roman" linespacing=0.4
