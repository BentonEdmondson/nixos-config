// ==UserScript==
// @name reddit-redirect
// @match *://www.reddit.com/*
// @run-at document-start
// ==/UserScript==
location.protocol = "https:";
location.host = "teddit.net";
