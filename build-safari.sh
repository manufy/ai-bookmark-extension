#!/bin/bash

# Define cyan color
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Build the Safari extension app
echo -e "${CYAN}SAFARI PLUGIN BUILD: Building Safari extension...${NC}"
xcodebuild -project safari/xcode-ai-bookmark-extension-project/ai-bookmark-extension.xcodeproj -scheme "ai-bookmark-extension" -configuration Debug -derivedDataPath safari/build

# Find the built debug app
APP_PATH=$(find safari/build/Build/Products/Debug -name "*.app" -type d)

if [ -z "$APP_PATH" ]; then
    echo -e "${CYAN}SAFARI PLUGIN BUILD: Error: Could not find built .app file${NC}"
    exit 1
fi

echo -e "${CYAN}SAFARI PLUGIN BUILD: Found app at: $APP_PATH${NC}"

# Create the zip file
echo -e "${CYAN}SAFARI PLUGIN BUILD: Creating distributable zip file...${NC}"
ZIP_PATH="$(pwd)/safari/build/ai-bookmark-extension-safari.zip"
zip -r "$ZIP_PATH" "$APP_PATH"

# Check if the zip file was created
if [ -f "$ZIP_PATH" ]; then
    echo -e "${CYAN}SAFARI PLUGIN BUILD: Zip file created successfully at: $ZIP_PATH${NC}"
else
    echo -e "${CYAN}SAFARI PLUGIN BUILD: Error: Zip file was not created${NC}"
fi

echo -e "${CYAN}SAFARI PLUGIN BUILD: Moving distributable zip file to dist-plugins${NC}"
mkdir -p dist-plugins
mv safari/build/ai-bookmark-extension-safari.zip dist-plugins
echo -e "${CYAN}SAFARI PLUGIN BUILD: Build complete! to dist-plugins directory.${NC}"