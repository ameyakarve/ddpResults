COUNTER = 0
find . -type f -iname "*.stl" -print0 | while IFS= read -r -d $'\0' line; do
    extension="${line##*.}"
    filename="${line%.*}"
    mkdir "$filename"
    mv "$line" "$filename"/
    echo ""
    echo $COUNTER
    echo ""
    let COUNTER=COUNTER+1
done