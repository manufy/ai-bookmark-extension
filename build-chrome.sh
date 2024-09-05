#!/bin/bash

# Define orange color
ORANGE='\033[0;33m'
NC='\033[0m' # No Color

# Navigate to the Chrome extension directory
cd chrome

# Install dependencies
echo -e "${ORANGE}CHROME PLUGIN BUILD: Installing dependencies...${NC}"
npm install

# Build the extension
echo -e "${ORANGE}CHROME PLUGIN BUILD: Building the extension...${NC}"
npm run build

# Create the zip file
echo -e "${ORANGE}CHROME PLUGIN BUILD: Creating distributable zip file...${NC}"
npm run zip

# Move the zip file to the dist-plugins directory
echo -e "${ORANGE}CHROME PLUGIN BUILD: Moving zip file to dist-plugins directory...${NC}"
mkdir -p ../dist-plugins
mv ai-bookmark-extension-chrome.zip ../dist-plugins/

# Navigate back to the root directory
cd ..

echo -e "${ORANGE}CHROME PLUGIN BUILD: Build complete to dist-plugins directory.${NC}"