import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_list/card_listtile.dart';

import 'custom_scroll_ve_silvers.dart';
import 'deneme.dart';
import 'gridview.dart';
import 'listview_kullanimi.dart';
import 'listview_layout_problemleri.dart';

void main() {
  runApp(const MyApp());
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 1000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = true;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
          //siyah tema gece modu gibi
          brightness: Brightness.dark),
      home: CollapsableToolbarOrnek(),
      builder: EasyLoading.init(),
    );
  }
}
