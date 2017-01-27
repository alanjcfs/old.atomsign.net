'use strict';

require('ace-css/css/ace.css');
// require('font-awesome/css/font-awesome.css'); // install font-awesome@4

// Ensure index.html gets copied to dist
require('./index.html');

var Elm = require('./Main.elm');
var mountNode = document.getElementById('main');

var app = Elm.Main.embed(mountNode);
