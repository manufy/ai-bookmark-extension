const path = require('path');
const CopyPlugin = require('copy-webpack-plugin');

module.exports = {
  mode: 'production',
  entry: {
    background: './background.js',
    popup: './popup/popup.js'
  },
  output: {
    filename: '[name].js',
    path: path.resolve(__dirname, 'dist'),
  },
  plugins: [
    new CopyPlugin({
      patterns: [
        { from: "manifest.json", to: "manifest.json" },
        { from: "icons", to: "icons" },
        { from: "popup/popup.html", to: "popup/popup.html" },
        { from: "popup/popup.css", to: "popup/popup.css" }
      ],
    }),
  ],
};