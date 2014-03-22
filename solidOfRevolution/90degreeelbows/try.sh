COUNTER = 0
find . -type f -iname "*.obj" -print0 | while IFS= read -r -d $'\0' line; do
    extension="${line##*.}"
    filename="${line%.*}"
    meshlabserver -i "$line" -o "stl/$filename".stl -s removeDuplicates.mlx
    echo ""
    echo $COUNTER
    echo ""
    let COUNTER=COUNTER+1
done