#!/bin/bash

echo "Downloading baby names..."
curl -O http://www.ssa.gov/oact/babynames/names.zip

echo "Checking the file..."
unzip -t names.zip

echo "Unzipping into names directory"
unzip names.zip -d names