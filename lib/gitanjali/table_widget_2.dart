import 'package:flutter/material.dart';

class Tablewidgets2 extends StatelessWidget {
  const Tablewidgets2({Key? key}) : super(key: key);

  static const String _title = 'My Table Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MySimpleTabl(),
      ),
    );
  }
}

class MySimpleTable {}

class MySimpleTabl extends StatelessWidget {
  const MySimpleTabl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: <DataColumn>[
        DataColumn(
          label: Text(
            'Student Name',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        DataColumn(
          label: Text(
            'Roll no.',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        DataColumn(
          label: Text(
            'Marks',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        DataColumn(
          label: Text(
            'Positon',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Shanvi')),
            DataCell(Text('1')),
            DataCell(Text('455/500')),
            DataCell(Text('1st')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Rihana')),
            DataCell(Text('2')),
            DataCell(Text('395/500')),
            DataCell(Text('2nd')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Unnati')),
            DataCell(Text('3')),
            DataCell(Text('499/500')),
            DataCell(Text('1st')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Utkarsh')),
            DataCell(Text('4')),
            DataCell(Text('350/500')),
            DataCell(Text('3rd')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Alix')),
            DataCell(Text('5')),
            DataCell(Text('345/500')),
            DataCell(Text('4th')),
          ],
        ),
      ],
    );
  }
}
