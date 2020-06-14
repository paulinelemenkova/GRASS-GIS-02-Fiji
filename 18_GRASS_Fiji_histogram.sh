#!/bin/sh
# GRASS GIS script for plotting histogram: Fiji
g.region raster=vt_relief_ETOPO1 -p
d.mon wx0
# r.colors --help
r.colors vt_relief_ETOPO1 col=elevation
d.histogram map=vt_relief_ETOPO1 nsteps=6000
d.text text="Histogram of elevations (m)" color=blue size=3.0
# 2nd variant
d.histogram map=vvtc_geo
d.text text="Histogram of gravity (mGal)" color=blue size=3.0
