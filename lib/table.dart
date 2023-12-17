import 'package:demo/verticalTable.dart';
import 'package:flutter/material.dart';

class EditableTable extends StatefulWidget {
  @override
  _EditableTableState createState() => _EditableTableState();
}

class _EditableTableState extends State<EditableTable> {
  List<List<String>> tableData = [
    ['DATE', 'DEALER', 'SUB DEAL..', 'RETAIL', 'MRP'],
    ['', '', '', '', ''],
  ];

  void addNewRow() {
    setState(() {
      tableData.add(['', '', '', '', '']);
    });
  }

  List<List<TextEditingController>> controllersList = [];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double columnWidth = screenWidth * 0.08;

    if (screenWidth < 1000) {
      return Center(
        child: EditableVerticalTable(
          columnWidthWhenLess: MediaQuery.of(context).size.width * .11,
          columnWidthWhenMore: MediaQuery.of(context).size.width * .07,
        ),
      );
    }

    return Container(
      margin: EdgeInsets.all(10),
      child: Table(
        defaultColumnWidth: FixedColumnWidth(columnWidth),
        border: TableBorder.all(
          color: Colors.black,
          style: BorderStyle.solid,
          width: 1,
        ),
        children: [
          TableRow(
            children: [
              for (var header in tableData.first) buildHeaderCell(header),
            ],
          ),
          TableRow(
            children: [
              for (int index = 0; index < tableData.first.length; index++)
                buildEditableCell(index)
            ],
          ),
        ],
      ),
    );
  }

  Widget buildHeaderCell(String text) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

Widget buildEditableCell(int index) {
  return SizedBox(
    height: 30,
    child: Column(
      children: [
        SizedBox(
          height: 30,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: TextField(
              controller: controllersList.isNotEmpty
                  ? controllersList.last[index]
                  : null,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              onChanged: (value) {
                if (index == controllersList.last.length - 1 &&
                    controllersList.last.every(
                        (controller) => controller.text.isNotEmpty)) {
                  // Add a new row when all text fields in the current row are filled
                  addNewRow();
                }
              },
            ),
          ),
        ),
      ],
    ),
  );
}


}
