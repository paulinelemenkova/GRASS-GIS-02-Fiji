#!/bin/sh
# GRASS GIS script for ETOPO1 bathymetry grid (vt_relief.nc) for Vanuatu Trench
#r.in.gdal vt_relief.nc out=vt_relief title="Bathymetry: GEBCO grid"
r.in.gdal vt_relief.nc out=vt_relief title="Bathymetry: GEBCO grid"
g.list rast
d.mon wx0
# d.erase
# r.colors --help
# r.colors vt_relief_ETOPO1 col=elevation
r.colors vt_relief col=srtm_plus
g.region raster=vt_relief -p
d.rast vt_relief
r.info vt_relief
d.redraw
#r.contour vt_relief out=GEBCO_3000 step=3000 --overwrite
#d.vect GEBCO_3000 color='76:175:252' width=0
d.grid size=5 color=grey border_color=white width=0.05 fontsize=8 text_color=white
d.legend raster=vt_relief range=-11000,5000 title=Elevation,m title_fontsize=7 font=romand fontsize=8 -t -b bgcolor=white label_step=2000 border_color=gray thin=8
d.text text="Bathymetry grid: GEBCO DEM Global Relief Model" color=yellow size=1.0 font="Times New Roman" linespacing=0.5
d.text text="North Fiji Basin" color=yellow size=1.0 font="Times New Roman" linespacing=0.5
d.text text="Australia" color=black size=1.0 font="Times New Roman" linespacing=0.5
d.text text="CORAL SEA" color=yellow size=1.0 font="Times New Roman" linespacing=0.5
d.text text="FIJI SEA" color=yellow size=1.0 font="Times New Roman" linespacing=0.5
d.text text="P A C I F I C  O C E A N" color=yellow size=1.0 font="Times New Roman" linespacing=0.5
d.text text="TASMAN SEA" color=yellow size=1.0 font="Times New Roman" linespacing=0.5
d.text text="New Zealand" color=black size=1.0 font="Times New Roman" linespacing=0.5
d.text text="Fiji" color=black size=1.0 font="Times New Roman" linespacing=0.5
d.text text="Samoa" color=yellow size=1.0 font="Times New Roman" linespacing=0.5
d.text text="Vityaz Trench" color=yellow size=1.0 font="Times New Roman" linespacing=0.5 rotation=327
d.text text="V a n u a t u  T r e n c h" color=yellow size=1.0 font="Times New Roman" linespacing=0.5 rotation=290
d.text text="K e r m a d e c  T r e n c h" color=yellow size=1.0 font="Times New Roman" linespacing=0.5 rotation=71
d.text text="T o n g a  Trench" color=yellow size=1.0 font="Times New Roman" linespacing=0.5 rotation=73


