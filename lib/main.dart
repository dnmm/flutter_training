import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dnm/1teacher_homework/riverpod_all_step.dart';

void main() {
  // note - please comment below line and uncomment your run app without ProviderScope
  runApp(ProviderScope(child: RiverPodStateManagment()));

  // runApp(NamePositionalParameter());
}
