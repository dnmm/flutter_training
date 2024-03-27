import 'package:flutter/material.dart';
import 'package:flutter_application_1/anita/alert_dialog.dart';
import 'package:flutter_application_1/anita/navigation.dart/first_page.dart';
import 'package:flutter_application_1/anita/navigation.dart/home_page.dart';
import 'package:flutter_application_1/anita/navigation.dart/second_page.dart';
import 'package:flutter_application_1/anita/tab_bar.dart';
import 'package:flutter_application_1/gitanjali/tab_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
// //## note - please comment below line and uncomment your run app without ProviderScope
//   // runApp(ProviderScope(child: RiverPodStateManagement()));
//   runApp(
//     ProviderScope(
//       child: MyNewApp(),
//     ),
//   );
// //## note -without river pod using uncomment it
  runApp(ProviderScope(child: MyTabBar1()));
//  runApp(MultipleContoner());
}
