#!/bin/bash

read -p "Enter the URL of the Instagram reel: " url

read -p "Which browser are you logged into Instagram on (chrome/firefox): " browser

echo "Downloading Instagram reel from: $url"

yt-dlp $url -P output -S res:720 --write-info-json -o "%(id)s" --cookies-from-browser $browser --ffmpeg-location ./ffmpeg/bin

