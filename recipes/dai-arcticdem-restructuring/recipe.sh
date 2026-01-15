

DEST=/var/data/10.18739/A22805140/arcticdem_wmts/jump/ArcticDEM/1/; \
tr -d '\r' < $INPUT_FILE | awk -F',' 'NR==1{for(i=1;i<=NF;i++){gsub(/^[ "]+|[ "]+$/,"",$i); if($i=="file_path")f=i; if($i=="X_2")x=i; if($i=="Y_2")y=i} next} {print $f "\t" $x "\t" $y}' | \
while IFS=$'\t' read -r src X2 Y2; do echo "ln '$src' '$DEST/$X2/$Y2.tif'" >> $OUTPUT_FILE; done
