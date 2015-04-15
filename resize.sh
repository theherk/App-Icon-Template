#!/bin/bash

INK=/usr/bin/inkscape

if [[ -z "$1" ]] 
then
	echo "SVG file needed."
	exit;
fi

BASE=`basename "$1" .svg`
SVG="$1"

# iPhone Spotlight iOS5,6 Settings iOS and iPad 5-8 29pt
$INK -z -D -e "$BASE-29.png" -f 	$SVG -w 29 -h 29
$INK -z -D -e "$BASE-29@2x.png" -f 	$SVG -w 58 -h 58
$INK -z -D -e "$BASE-29@3x.png" -f      $SVG -w 87 -h 87

# iPhone Spotlight iOS7,8 40pt
$INK -z -D -e "$BASE-40@2x.png" -f 	$SVG -w 80 -h 80
$INK -z -D -e "$BASE-40@3x.png" -f      $SVG -w 120 -h 120

# iPhone App iOS 5,6 57pt
$INK -z -D -e "$BASE-57.png" -f 	$SVG -w 57 -h 57
$INK -z -D -e "$BASE-57@2x.png" -f 	$SVG -w 114 -h 114

# iPhone App iOS 7,8 60pt
$INK -z -D -e "$BASE-60@2x.png" -f 	$SVG -w 120 -h 120
$INK -z -D -e "$BASE-60@3x.png" -f      $SVG -w 180 -h 180

# iPad Spotlight iOS 7 40pt
$INK -z -D -e "$BASE-40.png" -f 	$SVG -w 40 -h 40

# iPad Spotlight iOS 5,6 50pt
$INK -z -D -e "$BASE-50.png" -f 	$SVG -w 50 -h 50
$INK -z -D -e "$BASE-50@2x.png" -f 	$SVG -w 100 -h 100

# iPad App iOS 5,6 72pt
$INK -z -D -e "$BASE-72.png" -f 	$SVG -w 72 -h 72
$INK -z -D -e "$BASE-72@2x.png" -f 	$SVG -w 144 -h 144

# iPad App iOS 7  76pt
$INK -z -D -e "$BASE-76.png" -f 	$SVG -w 76 -h 76 
$INK -z -D -e "$BASE-76@2x.png" -f 	$SVG -w 152 -h 152

#iTunes Artwork
$INK -z -D -e "$BASE-512.png" -f 	$SVG -w 512 -h 512
$INK -z -D -e "$BASE-1024.png" -f 	$SVG -w 1024 -h 1024

cp "$BASE-512.png" iTunesArtwork.png
cp "$BASE-1024.png" iTunesArtwork@2x.png
