# AI Bookmark Manager Extension

This is a browser extension for AI-powered bookmark management, available for Chrome, Firefox, and Safari.

## Features

- [List the main features of your extension]

## Building and Installing

### Chrome

1. Ensure you have Node.js installed.
2. Open a terminal and navigate to the project root.
3. Run `./build-chrome.sh` to build the Chrome extension.
4. The built extension will be in `dist-plugins/ai-bookmark-extension-chrome.zip`.
5. To install for development:
   - Open Chrome and go to `chrome://extensions/`
   - Enable "Developer mode" in the top right corner
   - Click "Load unpacked" and select the `chrome` folder

### Firefox

1. Ensure you have Node.js installed.
2. Open a terminal and navigate to the project root.
3. Run `./build-firefox.sh` to build the Firefox add-on.
4. The built add-on will be in `dist-plugins/ai-bookmark-extension-firefox.zip`.
5. To install for development:
   - Open Firefox and go to `about:debugging#/runtime/this-firefox`
   - Click "Load Temporary Add-on" and select the `manifest.json` file from the `firefox` folder

### Safari

1. Ensure you have Xcode installed.
2. Open a terminal and navigate to the project root.
3. Run `./build-safari.sh` to build the Safari extension.
4. The built extension will be in `dist-plugins/ai-bookmark-extension-safari.zip`.
5. To install for development:
   - Unzip the file
   - In Safari, enable the Develop menu: Safari > Preferences > Advanced > "Show Develop menu in menu bar"
   - In Safari, go to Develop > Allow Unsigned Extensions
   - Go to Safari > Preferences > Extensions
   - Click the "+" button and select the unzipped .app file

## Usage

[Provide instructions on how to use the extension]

## Development

To modify or enhance this extension:

1. Edit the relevant files in the respective browser folders.
2. Reload the extension in the browser to see your changes.
3. For production builds, use the respective build scripts.

## License

[Include your chosen license information]

## Contact

[Your contact information or link to issues page]