#!/bin/bash

read -p "Enter the URL of the YouTube video: " url

echo "Downloading YouTube video from: $url"

yt-dlp $url -P output -S res:720 --write-info-json -o "%(id)s" --ffmpeg-location ./ffmpeg/bin