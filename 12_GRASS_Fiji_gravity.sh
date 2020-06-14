#!/bin/sh
# GRASS GIS script for marine free-air gravity grid (vvtc_grav.grd)
g.list rast
d.mon wx0
g.region raster=vvtc_grav -p
# set the region, display the input maps and create a MASK g.region rast=elevation -p
r.info vvtc_grav
d.erase
r.colors vvtc_grav col=celsius
d.rast vvtc_grav
d.redraw
d.grid size=2.5 color=yellow border_color=yellow width=0.1 fontsize=8 text_color=white
d.legend raster=vvtc_grav range=-100,80 title=Gravity,mGal title_fontsize=8 font=Helvetica fontsize=8 -t -b bgcolor=white label_step=20 border_color=gray thin=8
d.text text="Marine free-air gravity anomaly" color=yellow bgcolor=gray size=2.0 font="Times New Roman" linespacing=0.4
