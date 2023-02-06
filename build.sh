#!/bin/bash

npm run sass:build

buildFolder="build"
srcFolder="src"
cssFolder="css"
imgFolder="img"

# Create the build folder if it doesn't exist
if [ ! -d "$buildFolder" ]; then
  mkdir "$buildFolder"
fi

# Copy all files and subdirectories from src and css folders into the build folder
cp -R "$srcFolder"/. "$buildFolder"/
cp -R "$cssFolder" "$buildFolder"/
cp -R "$imgFolder" "$buildFolder"/

# Search and replace the old file paths with the new file paths in the HTML files
htmlFiles=$(find "$buildFolder" -name "*.html")
for file in $htmlFiles; do
  sed -i "s@../css/@css/@g" "$file"
  sed -i "s@../img/@img/@g" "$file"
done