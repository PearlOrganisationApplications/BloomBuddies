

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:from_to_time_picker/from_to_time_picker.dart';

FromToTimePicker TimePicker({required Function(dynamic from, dynamic to) onTab}) {
  return FromToTimePicker(
    onTab: (from, to) => onTab(from,to),
    dialogBackgroundColor: Color(0xFF121212),
    fromHeadlineColor: Colors.white,
    toHeadlineColor: Colors.white,
    upIconColor: Colors.white,
    downIconColor: Colors.white,
    timeBoxColor: Color(0xFF1E1E1E),
    timeHintColor: Colors.grey,
    timeTextColor: Colors.white,
    dividerColor: Color(0xFF121212),
    doneTextColor: Colors.white,
    dismissTextColor: Colors.white,
    defaultDayNightColor: Color(0xFF1E1E1E),
    defaultDayNightTextColor: Colors.white,
    colonColor: Colors.white,
    showHeaderBullet: true,
    headerText: 'Select Your Available Time',
  );
}