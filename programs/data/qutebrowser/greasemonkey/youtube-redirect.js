// ==UserScript==
// @name youtube-redirect
// @match *://www.youtube.com/*
// @match *://youtu.be/*
// @run-at document-start
// ==/UserScript==
location.protocol = "https:";
location.host = "yewtu.be";
