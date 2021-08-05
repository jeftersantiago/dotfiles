#!/bin/sh
for FILE in *.webp; do
	echo -e "Processing image '\e[32m$FILE\e[0m'";
	ffmpeg -i "${FILE}" "${FILE%.webm}.jpg";
	rm *webp
done;
