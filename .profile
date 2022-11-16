remove-black-bars() {
    cropvalue=`ffmpeg -ss 1 -i "$1" -vframes 10 -vf cropdetect -f null - 2>&1 | awk '/crop/ { print $NF }' | tail -1`
    ffmpeg -i "$1" -vf $cropvalue -c:a copy output.mp4
    mv output.mp4 "$1"
}
