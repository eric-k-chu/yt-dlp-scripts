#!/bin/bash

read -p "Enter the URL of the YouTube playlist or channel: " url

echo "Downloading YouTube playlist/channel from: $url"

yt-dlp $url -P output -S res:720 --write-info-json -o "%(playlist)s/%(id)s" --ffmpeg-location ./ffmpeg/bin