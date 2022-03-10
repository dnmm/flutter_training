// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/dnm/pdf_invoice_generate/pdf_preview.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;

// class InvoicePDf extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'PDF Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.grey,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   final pdf = pw.Document();

//   writeOnPdf() {
//     pdf.addPage(pw.MultiPage(
//       pageFormat: PdfPageFormat.a4,
//       margin: pw.EdgeInsets.all(32),
//       build: (pw.Context context) {
//         return <pw.Widget>[
//           pw.Header(
//               level: 0,
//               child: pw.Row(
//                   mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                   children: <pw.Widget>[
//                     pw.Text('Geeksforgeeks', textScaleFactor: 2),
//                   ])),
//           pw.Header(level: 1, text: 'What is Lorem Ipsum?'),
//           pw.Header(child: pw.Text("Heading")),
//           pw.Paragraph(text: "My Name is"),
//           pw.Paragraph(text: pw.LoremText().paragraph(60)),
//           pw.Paragraph(text: pw.LoremText().paragraph(60)),
//           pw.Paragraph(text: "Your Address is"),
//           pw.Header(level: 1, child: pw.Text("Second Heading")),
//           pw.Paragraph(text: "Our Moto is india"),
//           pw.Paragraph(text: pw.LoremText().paragraph(60)),
//           pw.Paragraph(text: pw.LoremText().paragraph(60)),
//           pw.Paragraph(text: "This is my style"),
//           // Write All the paragraph in one line.
//           // For clear understanding
//           // here there are line breaks.

//           pw.Padding(padding: const pw.EdgeInsets.all(10)),
//           pw.Table.fromTextArray(context: context, data: const <List<String>>[
//             <String>['Year', 'Sample'],
//             <String>['SN0', 'GFG1'],
//             <String>['SN1', 'GFG2'],
//             <String>['SN2', 'GFG3'],
//             <String>['SN3', 'GFG4'],
//           ]),
//         ];
//       },
//     ));
//   }

//   Future savePdf() async {
//     Directory documentDirectory = await getApplicationDocumentsDirectory();
//     String documentPath = documentDirectory.path;
//     File file = File("$documentPath/example.pdf");
//     file.writeAsBytesSync(pdf.save());
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Geeksforgeeks"),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(10),
//         child: Column(
//           children: <Widget>[
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 color: Colors.blueGrey,
//                 child: Text(
//                   'Preview PDF',
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18,
//                       color: Colors.white),
//                 ),
//                 onPressed: () async {
//                   writeOnPdf();
//                   await savePdf();

//                   Directory documentDirectory =
//                       await getApplicationDocumentsDirectory();

//                   String documentPath = documentDirectory.path;

//                   String fullPath = "$documentPath/example.pdf";
//                   print(fullPath);

//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => PdfPreviewScreen(
//                                 path: fullPath,
//                               )));
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
