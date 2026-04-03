# WARNING: This is not a real shell script, although it is meant to look and
# feel like one. Each line, unless it starts with #, is interpreted as a
# workflow step.

bash -c 'for nc_file in /input_dir/*.nc; do base_name=$(basename "$nc_file" .nc); echo "Processing $nc_file..."; gdal_translate -of GTiff -co COMPRESS=LZW "$nc_file" "/output_dir/${base_name}_epsg3413.tif"; done && echo "Complete! Created $(ls /output_dir/*.tif 2>/dev/null | wc -l) files"'
