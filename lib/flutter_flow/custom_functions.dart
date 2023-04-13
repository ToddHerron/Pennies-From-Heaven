import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/firebase_auth/auth_util.dart';

double getDoubleValueFromString(String? testString) {
  // returns non-negative double parse of string, otherwise returns 0.0

  String s;
  s = testString ??= ""; // convert null string to empty string
  s = s.replaceAll("\$", "");
  s = s.replaceAll("-", "");
  s = s.replaceAll(",", "");
  s = s.replaceAll(" ", "");
  if (double.tryParse(s) == null) return 0.0;
  return (double.parse(s) * 100).round() / 100;
}

String? formatDonationAmount(String? inputDonationAmount) {
  var _i = inputDonationAmount ?? '0.00';
  var f = NumberFormat("\$###,###.00", "en_CA");
  return f.format(_i);
}
