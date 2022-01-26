import 'package:flutter/material.dart';

class SampleContainerWidget extends StatefulWidget {
  const SampleContainerWidget({Key? key}) : super(key: key);

  @override
  State<SampleContainerWidget> createState() => _SampleContainerWidgetState();
}

class _SampleContainerWidgetState extends State<SampleContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(color: const Color(0xFFFFE306));
  }
}
