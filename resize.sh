#!/bin/bash

INK=/usr/bin/inkscape

if [[ -z "$1" ]] 
then
	echo "SVG file needed."
	exit;
fi

BASE=`basename "$1" .svg`
SVG="$1"



# iPhone Spotlight iOS5,6 Settings iOS and iPad 5-7 29pt
$INK -z -D -e "$BASE-29.png" -f 	$SVG -w 29 -h 29
$INK -z -D -e "$BASE-29@2x.png" -f 	$SVG -w 58 -h 58
$INK -z -D -e "$BASE-29@3x.png" -f 	$SVG -w 87 -h 87

# iPhone Spotlight iOS7,8 40pt
$INK -z -D -e "$BASE-40.png" -f 	$SVG -w 40 -h 40
$INK -z -D -e "$BASE-40@2x.png" -f 	$SVG -w 80 -h 80
$INK -z -D -e "$BASE-40@3x.png" -f 	$SVG -w 120 -h 120

# iPhone App iOS 7,8 60pt
$INK -z -D -e "$BASE-60@2x.png" -f 	$SVG -w 120 -h 120
$INK -z -D -e "$BASE-60@3x.png" -f 	$SVG -w 180 -h 180

# iPad App iOS 7,8  76pt
$INK -z -D -e "$BASE-76.png" -f 	$SVG -w 76 -h 76 
$INK -z -D -e "$BASE-76@2x.png" -f 	$SVG -w 152 -h 152

#iTunes Artwork
$INK -z -D -e "$BASE-512.png" -f 	$SVG -w 512 -h 512
$INK -z -D -e "$BASE-1024.png" -f 	$SVG -w 1024 -h 1024

cp "$BASE-512.png" iTunesArtwork.png
cp "$BASE-1024.png" iTunesArtwork@2x.png
