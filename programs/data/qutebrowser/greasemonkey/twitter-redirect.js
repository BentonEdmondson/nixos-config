// ==UserScript==
// @name twitter-redirect
// @match *://twitter.com/*
// @run-at document-start
// ==/UserScript==
location.protocol = "https:";
location.host = "nitter.net";
