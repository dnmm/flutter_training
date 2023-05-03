import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '2023_new_training/class1/put_multiple_number_on_screen.dart';

void main() {
//## note - please comment below line and uncomment your run app without ProviderScope
  // runApp(ProviderScope(child: RiverPodStateManagement()));
  runApp(
    ProviderScope(
      child: MyNewApp(),
    ),
  );
//## note -without river pod using uncomment it

  // runApp(NamePositionalParameter());
}
