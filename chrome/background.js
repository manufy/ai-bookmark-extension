// Add any background scripts here
console.log("Background script running");

chrome.runtime.onInstalled.addListener(() => {
  console.log("Extension installed");
});