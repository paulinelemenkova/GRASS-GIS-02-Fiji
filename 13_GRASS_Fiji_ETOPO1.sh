#!/bin/sh
# GRASS GIS script for ETOPO1 bathymetry grid (vt_relief.nc) for Vanuatu Trench
r.in.gdal vvtc_relief.nc out=vt_relief_ETOPO1 title="Bathymetry: ETOPO1 grid"
g.list rast
d.mon wx0
# r.colors --help
r.colors vt_relief_ETOPO1 col=srtm_plus
d.rast vt_relief_ETOPO1
r.info vt_relief_ETOPO1
d.redraw
r.contour vt_relief_ETOPO1 out=ETOPO1_2000 step=2000 --overwrite
d.vect ETOPO1_2000 color='76:175:252' width=0
d.grid size=2.5 color=white border_color=white width=0.1 fontsize=8 text_color=white
r.info vt_relief_ETOPO1
d.legend raster=vt_relief_ETOPO1 range=-9000,2000 title=Elevation,m title_fontsize=8 font=romand fontsize=8 -t -b bgcolor=white label_step=500 border_color=gray thin=8
d.text text="Bathymetry: ETOPO1 grid" color=yellow bgcolor=gray size=1.0 font="Times New Roman" linespacing=0.5
