import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sertifikasi_pertama/day_1/latihan_7.dart';
import 'package:sertifikasi_pertama/day_1/latihan_8.dart';
import 'package:sertifikasi_pertama/day_3/BabAsset/asset_page.dart';
import 'package:sertifikasi_pertama/day_3/Navigation/home_page.dart';
import 'package:sertifikasi_pertama/day_3/Navigation/text_input_page.dart';
import 'package:sertifikasi_pertama/day_3/Onboarding/onboarding.dart';
import 'package:sertifikasi_pertama/day_4/fetch_api_builder.dart';
import 'package:sertifikasi_pertama/day_4/fetch_api_get.dart';
import 'package:sertifikasi_pertama/day_4/text_input_page_user.dart';

void main() {
  runApp(
    DevicePreview(enabled: !kReleaseMode, builder: (context) => const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: TextInputPageUser(),
    );
  }
}
