import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'Sharmila/state_provider.dart';
import 'dnm/1teacher_homework/riverpod_all_step.dart';

void main() {
//## note - please comment below line and uncomment your run app without ProviderScope
 // runApp(ProviderScope(child: RiverPodStateManagment()));
 runApp(ProviderScope(child: MyWidget()));
//## note -without river pod using uncomment it

  // runApp(NamePositionalParameter());
}
