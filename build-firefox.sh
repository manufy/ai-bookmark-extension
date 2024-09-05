#!/bin/bash

# Define green color
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Navigate to the Firefox add-on directory
cd firefox

# Install dependencies
echo -e "${GREEN}FIREFOX PLUGIN BUILD: Installing dependencies...${NC}"
npm install

# Build the add-on
echo -e "${GREEN}FIREFOX PLUGIN BUILD: Building the add-on...${NC}"
npm run build

# Create the zip file
echo -e "${GREEN}FIREFOX PLUGIN BUILD: Creating distributable zip file...${NC}"
zip -r ai-bookmark-extension-firefox.zip * -x "node_modules/*"

# Move the zip file to the dist-plugins directory
echo -e "${GREEN}FIREFOX PLUGIN BUILD: Moving zip file to dist-plugins directory...${NC}"
mkdir -p ../dist-plugins
mv ai-bookmark-extension-firefox.zip ../dist-plugins/

# Navigate back to the root directory
cd ..

echo -e "${GREEN}FIREFOX PLUGIN BUILD: Build complete to dist-plugins directory.${NC}"