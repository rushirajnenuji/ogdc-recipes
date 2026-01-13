#!/bin/sh

# Parallel GeoPackage processing - Reproject and Convert
# Each partition processes its assigned files independently

ogr2ogr -f GPKG -t_srs EPSG:4326 $INPUT_FILE && echo "Reprojected $INPUT_FILE to EPSG:4326"

ogr2ogr -f GeoJSON $OUTPUT_FILE $INPUT_FILE && echo "Converted $INPUT_FILE to GeoJSON"