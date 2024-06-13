import 'package:flutter/material.dart';
import 'package:flutter_application_1/gitanjali/my_extra_activity/make_login_page.dart';
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

  runApp(ProviderScope(child: MyLoginPageProfessional()));
//  runApp(MultipleContoner());
}
