import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_clean_architecture/API.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: API(),
    ),
  );
}
