import 'package:flutter/material.dart';
import 'package:flutter_application_1/anita/animation_widget.dart';
import 'package:flutter_application_1/gitanjali/W3D4_Text_Widget.dart';
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
  runApp(ProviderScope(child: W3D4_text ()));
//  runApp(MultipleContoner());
}
