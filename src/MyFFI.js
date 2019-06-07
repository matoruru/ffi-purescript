"use strict";

// module MyFFI

exports.alertImpl = alert;

exports.promptImpl = prompt;

exports.add1Impl = function (a) {
   return a;
};

exports.add2Impl = function (a, b) {
   return a + b;
};

exports.add3Impl = function (a, b, c) {
   return a + b + c;
};

exports.add10Impl = function (a, b, c, d, e, f, g, h, i, j) {
   return a + b + c + d + e + f + g + h + i + j;
};
