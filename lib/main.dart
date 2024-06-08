import 'package:flutter/material.dart';
import 'package:flutter_application_1/dnm/radio_button/radio_button.dart';
import 'package:flutter_application_1/gitanjali/toast_widget.dart';
import 'package:flutter_application_1/gitanjali/w8d2_scroll_view.dart';
import 'package:flutter_application_1/gitanjali/w8d2_switch_widget.dart';
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

  runApp(ProviderScope(child: W8D2ChildScrollView()));
//  runApp(MultipleContoner());
}
