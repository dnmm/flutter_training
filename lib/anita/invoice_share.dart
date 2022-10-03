import 'package:flutter/material.dart';
import 'dart:async';

// ignore: unused_import
import 'package:flutter/services.dart';
import 'package:flutter_share/flutter_share.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:documents_picker/documents_picker.dart';

class InvoiceShare extends StatelessWidget {
  Future<void> share() async {
    await FlutterShare.share(
        title: 'Example share',
        text: 'Example share text',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Example Chooser Title');
  }

  Future<void> shareFile() async {
    List<dynamic> docs = await DocumentsPicker.pickDocuments;
    // ignore: unnecessary_null_comparison
    if (docs == null || docs.isEmpty) return null;

    await FlutterShare.shareFile(
      title: 'Example share',
      text: 'Example share text',
      filePath: docs[0] as String,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: Text('Share text and link'),
                onPressed: share,
              ),
              ElevatedButton(
                child: Text('Share local file'),
                onPressed: shareFile,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
