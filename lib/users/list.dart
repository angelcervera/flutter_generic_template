import 'dart:math';

import 'package:flutter/material.dart';

class MyData extends DataTableSource {
  // Generate some made-up data
  final List<Map<String, dynamic>> _data = List.generate(
      200,
      (index) => {
            "name": "Name $index",
            "roles": "A, B, C",
            "age": Random().nextInt(10000) % 100
          });

  bool get isRowCountApproximate => true;

  int get rowCount => _data.length;

  int get selectedRowCount => 0;

  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]['name'].toString())),
      DataCell(Text(_data[index]["age"].toString())),
      DataCell(Text(_data[index]["roles"].toString())),
    ]);
  }
}

class PaginatedList extends StatefulWidget {
  PaginatedList({Key? key}) : super(key: key);

  @override
  _PaginatedListState createState() => _PaginatedListState();
}

class _PaginatedListState extends State<PaginatedList> {
  DataTableSource _data = MyData();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: PaginatedDataTable(
        source: _data,
        header: Text('Users Management'),
        actions: [
          TextButton.icon(
            icon: Icon(Icons.add),
            label: Text("New User"),
            onPressed: () {},
          ),
        ],
        onSelectAll: (isSelected) => {},
        columnSpacing: 100,
        horizontalMargin: 10,
        rowsPerPage: 10,
        showCheckboxColumn: false,
        columns: const [
          DataColumn(
            label: Text(
              'Name',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            tooltip: "User Name",
          ),
          DataColumn(
            label: Text(
              'Age',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
              label: Text(
                'Roles',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              tooltip: "Current list of roles associated to the user"),
        ],
      ),
    );
  }
}
