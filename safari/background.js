// Add any background scripts here
console.log("Background script running");

browser.runtime.onInstalled.addListener(() => {
  console.log("Extension installed");
});