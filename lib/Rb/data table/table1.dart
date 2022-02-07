import 'package:flutter/material.dart';

class Table1 extends StatelessWidget {
  const Table1({Key? key}) : super(key: key);

  static const String _title = 'table exa';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Tablepage1(),
      ),
    );
  }
}

class Tablepage1 extends StatelessWidget {
  const Tablepage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Name',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Age',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Role',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'other',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('rb')),
            DataCell(Text('27')),
            DataCell(Text('Engineer')),
            DataCell(Text('present')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('dpm')),
            DataCell(Text('27')),
            DataCell(Text('senior ENgineer')),
            DataCell(Text('present')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('dnm')),
            DataCell(Text('27')),
            DataCell(Text('director')),
            DataCell(Text('present')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('abc')),
            DataCell(Text('27')),
            DataCell(Text('xyz')),
            DataCell(Text('present')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('abc')),
            DataCell(Text('27')),
            DataCell(Text('xyz')),
            DataCell(Text('present')),
          ],
        ),
      ],
    );
  }
}
