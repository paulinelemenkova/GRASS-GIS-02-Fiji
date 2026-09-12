# GRASS GIS Scripts — Topographic and Geophysical Mapping of the North Fiji Basin, Pacific Ocean

GRASS GIS shell scripts used to produce the figures in the peer-reviewed article by Polina Lemenkova. The scripts map and analyse the North Fiji Basin and Vanuatu Trench from the ETOPO1 DEM together with marine geophysical grids (free-air gravity anomaly, geoid, vertical gravity gradient) and GEBCO bathymetry.

**Published in:** *Geographia Napocensis* **2020**, *14*(1), 27–38
**Journal PDF:** https://geografie.acad-cj.ro/geographianapocensis/Revista/volume/nr_1_2020/pdf/Polina.pdf
**DOI (figshare):** https://doi.org/10.6084/m9.figshare.13337318
**Zenodo:** https://doi.org/10.5281/zenodo.4307966
**HAL:** https://hal.science/hal-03042041
**SSRN:** https://ssrn.com/abstract=3743382

## Contents
Shell scripts calling GRASS GIS modules for raster import (r.in.gdal), colour tables (r.colors), display and cartography (d.rast, d.vect, d.grid, d.legend, d.text), contouring (r.contour) and terrain derivatives (r.slope.aspect for slope, aspect, profile and tangential curvature). Input grids cover ETOPO1 bathymetry, marine free-air gravity anomaly, geoid, vertical gravity gradient and GEBCO bathymetry, with histogram, polar and pie-chart summaries.

## LaTeX source
The LaTeX source (prose) of this article is in a separate repository: https://github.com/paulinelemenkova/grass-etopo1-geophysical-analysis-fiji

## Citation
Lemenkova, P. GRASS GIS Modules for Topographic and Geophysical Analysis of the ETOPO1 DEM and Raster Data: North Fiji Basin, Pacific Ocean. *Geographia Napocensis* **2020**, *14*(1), 27–38. https://doi.org/10.6084/m9.figshare.13337318
