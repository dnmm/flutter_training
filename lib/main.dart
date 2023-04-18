import 'package:flutter/material.dart';
import 'package:flutter_application_1/dnm/Button/elevated_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'Sharmila/state_provider.dart';

void main() {
//## note -without river pod using uncomment it
  runApp(MyElevatedButton());

//## note - please comment below line and uncomment your run app without ProviderScope
  // runApp(ProviderScope(child: RiverPodStateManagment()));
  runApp(
    ProviderScope(
      child: MyWidget(),
    ),
  );
}
