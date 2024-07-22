import 'package:flutter/material.dart';

class TableListWidget extends StatelessWidget {
  const TableListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(label: Text('TITLE')),
        DataColumn(label: Text('Likes')),
        DataColumn(label: Text('Date')),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Title')),
            DataCell(Text('20 Likes')),
            DataCell(Text('11-11-2022')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Title')),
            DataCell(Text('20 Likes')),
            DataCell(Text('11-11-2022')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Title')),
            DataCell(Text('20 Likes')),
            DataCell(Text('11-11-2022')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Title')),
            DataCell(Text('20 Likes')),
            DataCell(Text('11-11-2022')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Title')),
            DataCell(Text('20 Likes')),
            DataCell(Text('11-11-2022')),
          ],
        ),
      ],
    );
  }
}
