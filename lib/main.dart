import 'package:flutter/material.dart';
import 'package:flutter_application_1/gitanjali/W1D1_handling_ges.dart';
import 'package:flutter_application_1/gitanjali/card_widgets.dart';
import 'package:flutter_application_1/gitanjali/layoutWidgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'dnm/extra_learning/riverpod/2022/automatic_counter_with_condition.dart';

void main() {
// //## note - please comment below line and uncomment your run app without ProviderScope
//   // runApp(ProviderScope(child: RiverPodStateManagement()));
//   runApp(
//     ProviderScope(
//       child: MyNewApp(),
//     ),
//   );
// //## note -without river pod using uncomment it
  runApp(ProviderScope(child:  W1D1_handling_gesture()));
//  runApp(MultipleContoner());
}
