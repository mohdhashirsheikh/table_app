import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:table_app/Employee.dart';

class DataTableApp extends StatefulWidget {
  DataTableApp({Key? key}) : super(key: key);

  @override
  _DataTableAppState createState() => _DataTableAppState();
}

class _DataTableAppState extends State<DataTableApp> {
  List<Employee> emps = [];
  @override
  void initState() {
    emps = Employee.getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Table App"),
      ),
      body: Column(
        children: [
          Expanded(
            child: tableBody(context),
          ),
        ],
      ),
    );
  }

  SingleChildScrollView tableBody(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
            dataRowHeight: 50,
            dividerThickness: 5,
            columns: [
              DataColumn(
                label: Text(
                  "First Name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                numeric: false,
                tooltip: "This is First Name",
              ),
              DataColumn(
                label: Text(
                  "Last Name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                numeric: false,
                tooltip: "This is Last Name",
              ),
              DataColumn(
                label: Text(
                  "Id",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                numeric: true,
                //tooltip: "This is Id",
              ),
              DataColumn(
                label: Text(
                  "Email Id",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                numeric: false,
                tooltip: "This is Email Id",
              ),
            ],
            rows: emps
                .map(
                  (emps) => DataRow(cells: [
                    DataCell(Text(
                        '${emps.firstName}')), // 1st type value access from list
                    DataCell(
                        Text(emps.lastName)), // 2nd type value access from List
                    DataCell(Text('${emps.id}')),
                    DataCell(Text(emps.email)),
                  ]),
                )
                .toList()),
      ),
    );
  }
}
