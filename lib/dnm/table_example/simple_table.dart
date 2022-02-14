import 'package:flutter/material.dart';

class SimpleTable extends StatelessWidget {
  const SimpleTable({Key? key}) : super(key: key);

  static const String _title = 'Simple Table';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MySimpleTabl(),
      ),
    );
  }
}

class MySimpleTabl extends StatelessWidget {
  const MySimpleTabl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: <DataColumn>[
        DataColumn(
          label: Text(
            'Product',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        DataColumn(
          label: Text(
            'Qty',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        DataColumn(
          label: Text(
            'Rate',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        DataColumn(
          label: Text(
            'Total',
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
            DataCell(Text('Rahul')),
            DataCell(Text('27')),
            DataCell(Text('10')),
            DataCell(Text('270')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Rohit')),
            DataCell(Text('25')),
            DataCell(Text('10')),
            DataCell(Text('250')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Mohit')),
            DataCell(Text('50')),
            DataCell(Text('10')),
            DataCell(Text('500')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Akash')),
            DataCell(Text('100')),
            DataCell(Text('100')),
            DataCell(Text('10000')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Anil Kumar Maurya')),
            DataCell(Text('80')),
            DataCell(Text('10')),
            DataCell(Text('800')),
          ],
        ),
      ],
    );
  }
}
