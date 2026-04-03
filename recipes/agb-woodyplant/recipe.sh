# Merge Greenland-relevant tiles (A3, B2, B3) into a single VRT
gdalbuildvrt /output_dir/woodyplant_agb_2020_p500_merged.vrt /input_dir/woodyplant_agb_2020_p500_*.tif && cp /input_dir/woodyplant_agb_2020_p500_*.tif /output_dir/
# Reproject to EPSG:3413 and clip to QGreenland extent
gdalwarp -r bilinear -t_srs EPSG:3413 -te -998012.0 -3611178.0 1228670.0 -329624.0 -co COMPRESS=LZW -co TILED=YES /input_dir/woodyplant_agb_2020_p500_merged.vrt /output_dir/woodyplant_agb_2020_p500_greenland.tif
