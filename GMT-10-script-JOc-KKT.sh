#!/bin/sh
# Purpose: coastline basemap in Mercator oblique projection (here: Kuril-Kamchatka Trench)
# GMT modules: pscoast, pstext
gmt pscoast -R140/38/170/60r -JOc155/50/155/210/6i -P \
    -Bxa4g4f1 -Bya2g2f1 -Df -B+t"Coastline of the Kuril-Kamchatka area" \
    -Gnavajowhite -Wthinnest \
    -Slightcyan \
    --FORMAT_GEO_MAP=dddF \
    --MAP_FRAME_PEN=dimgray \
    --MAP_FRAME_WIDTH=0.1c \
    --MAP_TICK_PEN_PRIMARY=thinner,dimgray \
    --FONT_TITLE=14p,Palatino-Roman,black \
    --FONT_ANNOT_PRIMARY=7p,Helvetica,dimgray \
    --FONT_LABEL=7p,Helvetica,dimgray \
    --MAP_GRID_PEN_PRIMARY=thinnest \
    -TdjBR+w0.4i+l+o0.15i \
    -Lx5.6i/-0.7i+c50+w1000k+l"Scale, km"+f \
    --MAP_TITLE_OFFSET=0.2i \
    -U -K > GMT_JOc_KKT.ps
gmt pstext -R0/8.5/0/11 -Jx1i -F+f7p,Helvetica,dimgray+jCB -N -O >> GMT_JOc_KKT.ps << EOF
3.5 -0.7 Mercator oblique projection center: 155\232/50\232, pole: 155\232/210\232
EOF