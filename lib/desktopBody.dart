import 'package:demo/table.dart';
import 'package:demo/widgets/cstmRowWidget.dart';
import 'package:demo/widgets/cstmWidget.dart';
import 'package:demo/widgets/singleRowWidget.dart';
import 'package:demo/widgets/singleTextField.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class MyDesktopBody extends StatefulWidget {
  const MyDesktopBody({super.key});

  @override
  State<MyDesktopBody> createState() => _BasicDetailsState();
}

class _BasicDetailsState extends State<MyDesktopBody> {
  List<List<String>> tableData = [
    // Initial data for the table
    ["Header 1", "Header 2", "Header 3"],
    ["Data 1", "Data 2", "Data 3"],
  ];
  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width * 0.1;
    double buttonHeight = MediaQuery.of(context).size.height * 0.03;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('NEW Item', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .6,
                          width: MediaQuery.of(context).size.width * .44,
                          decoration: BoxDecoration(
                              border: Border(
                            top: BorderSide(width: 1, color: Colors.black),
                            left: BorderSide(
                              width: 1,
                              color: Colors.black,
                            ),
                          )),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        .04,
                                    width: screenWidth < 900
                                        ? MediaQuery.of(context).size.width *
                                            .14
                                        : MediaQuery.of(context).size.width *
                                            0.1,
                                    color:
                                        const Color.fromARGB(255, 14, 63, 147),
                                    child: Text(
                                      ' BASIC DETAILS',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize:
                                              screenWidth < 1030 ? 11.0 : 14.0),
                                    )),
                              ),
                              Column(children: [
                                SingleTextField(labelText: 'Item Group'),
                                CustomRowTextField(
                                    labelText1: 'Item Brand',
                                    labelText2: 'Code No'),
                                SingleTextField(labelText: 'Item Name'),
                                SingleTextField(labelText: 'Print Name'),
                                CustomRowTextField(
                                    labelText1: 'Tax Category',
                                    labelText2: 'HSN Code'),
                              ]),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .6,
                          width: MediaQuery.of(context).size.width * .44,
                          decoration: BoxDecoration(
                              border: Border(
                            left: BorderSide(color: Colors.black),
                            bottom: BorderSide(color: Colors.black),
                          )),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DottedLine(
                                direction: Axis.horizontal,
                                lineLength: double.infinity,
                                lineThickness: 1.0,
                                dashLength: 4.0,
                                dashColor: Colors.black,
                                dashRadius: 0.0,
                                dashGapLength: 4.0,
                                dashGapColor: Colors.transparent,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 4, top: 4),
                                child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        .04,
                                    width: screenWidth < 900
                                        ? MediaQuery.of(context).size.width *
                                            .14
                                        : MediaQuery.of(context).size.width *
                                            0.1,
                                    color:
                                        const Color.fromARGB(255, 14, 63, 147),
                                    child: Text(
                                      ' STOCK OPTIONS',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize:
                                              screenWidth < 1030 ? 11.0 : 14.0),
                                    )),
                              ),
                              Column(children: [
                                CustomRowTextField(
                                    labelText1: 'Barcode Sr',
                                    labelText2: 'Store Location'),
                                CustomRowTextField(
                                    labelText1: 'Measurement Unit',
                                    labelText2: 'Secondary Unit'),
                                CustomRowTextField(
                                    labelText1: 'Minimum Stock',
                                    labelText2: 'Maximum Stock'),
                                SingleTextField(labelText: "Monthly Sale Qty")
                              ]),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .6,
                          width: MediaQuery.of(context).size.width * .44,
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(color: Colors.black),
                                  right: BorderSide(color: Colors.black),
                                  left: BorderSide(color: Colors.black))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 4),
                                child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        .04,
                                    width: screenWidth < 900
                                        ? MediaQuery.of(context).size.width *
                                            .14
                                        : MediaQuery.of(context).size.width *
                                            0.1,
                                    color:
                                        const Color.fromARGB(255, 14, 63, 147),
                                    child: Text(
                                      ' PRICE DETAILS',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize:
                                              screenWidth < 1030 ? 11.0 : 14.0),
                                    )),
                              ),
                              EditableTable()
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .6,
                          width: MediaQuery.of(context).size.width * .44,
                          decoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                                    color: Colors.black,
                                  ),
                                  bottom: BorderSide(color: Colors.black),
                                  left: BorderSide(color: Colors.black))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DottedLine(
                                direction: Axis.horizontal,
                                lineLength: double.infinity,
                                lineThickness: 1.0,
                                dashLength: 4.0,
                                dashColor: Colors.black,
                                dashRadius: 0.0,
                                dashGapLength: 4.0,
                                dashGapColor: Colors.transparent,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 4, top: 4),
                                child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        .04,
                                    width: screenWidth < 900
                                        ? MediaQuery.of(context).size.width *
                                            .14
                                        : MediaQuery.of(context).size.width *
                                            0.1,
                                    color:
                                        const Color.fromARGB(255, 14, 63, 147),
                                    child: Text(
                                      ' ITEM IMAGES',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize:
                                              screenWidth < 1030 ? 11.0 : 14.0),
                                    )),
                              ),
                              Column(children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Update Image ? :',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: const Color.fromARGB(
                                                255, 14, 63, 147)),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .01,
                                      ),
                                      Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .13,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .055,
                                          child: TextField(
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                            cursorHeight: 21,
                                            textAlignVertical:
                                                TextAlignVertical.top,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * .01,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black)),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.29,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.22,
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                fixedSize: Size(
                                                    buttonWidth, buttonHeight),
                                                primary: Colors.deepPurple,
                                                onPrimary: Colors.white,
                                              ),
                                              child: Text(
                                                'Add',
                                                style: TextStyle(
                                                    fontSize: screenWidth < 1030
                                                        ? 11.0
                                                        : 13.0),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                fixedSize: Size(
                                                    buttonWidth, buttonHeight),
                                                primary: Colors.deepPurple,
                                                onPrimary: Colors.white,
                                              ),
                                              child: Center(
                                                  child: Text(
                                                'Delete',
                                                style: TextStyle(
                                                    fontSize: screenWidth < 1030
                                                        ? 11.0
                                                        : 13.0),
                                              )),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                fixedSize: Size(
                                                    buttonWidth, buttonHeight),
                                                primary: Colors.deepPurple,
                                                onPrimary: Colors.white,
                                              ),
                                              child: Text(
                                                'Next',
                                                style: TextStyle(
                                                    fontSize: screenWidth < 1030
                                                        ? 11.0
                                                        : 13.0),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                fixedSize: Size(
                                                    buttonWidth, buttonHeight),
                                                primary: Colors.deepPurple,
                                                onPrimary: Colors.white,
                                              ),
                                              child: Text(
                                                'Previous',
                                                style: TextStyle(
                                                    fontSize: screenWidth < 1030
                                                        ? 11.0
                                                        : 13.0),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                fixedSize: Size(
                                                    buttonWidth, buttonHeight),
                                                primary: Colors.deepPurple,
                                                onPrimary: Colors.white,
                                              ),
                                              child: Text(
                                                'Zoom',
                                                style: TextStyle(
                                                    fontSize: screenWidth < 1030
                                                        ? 11.0
                                                        : 13.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .1,
                  width: MediaQuery.of(context).size.width * .88,
                  decoration: BoxDecoration(
                      border: Border(
                          right: BorderSide(
                            color: Colors.black,
                          ),
                          bottom: BorderSide(
                            color: Colors.black,
                          ),
                          left: BorderSide(color: Colors.black))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Row(
                      children: [
                        Text(
                          'Opening Stock (F7) :',
                          style: TextStyle(
                              fontSize: 13,
                              color: const Color.fromARGB(255, 14, 63, 147)),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .01,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * .13,
                            height: MediaQuery.of(context).size.height * .055,
                            child: TextField(
                              style: TextStyle(fontWeight: FontWeight.bold),
                              cursorHeight: 21,
                              textAlignVertical: TextAlignVertical.top,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            )),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .03,
                        ),
                        Text(
                          'Is Active :',
                          style: TextStyle(
                              fontSize: 13,
                              color: const Color.fromARGB(255, 14, 63, 147)),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .01,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * .13,
                            height: MediaQuery.of(context).size.height * .055,
                            child: TextField(
                              style: TextStyle(fontWeight: FontWeight.bold),
                              cursorHeight: 21,
                              textAlignVertical: TextAlignVertical.top,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            )),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .01,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: Size(
                                          MediaQuery.of(context).size.width *
                                              .1,
                                          25),
                                      shape: BeveledRectangleBorder(
                                          side: BorderSide(
                                              color: Colors.black, width: .3)),
                                      backgroundColor: Colors.yellow.shade100),
                                  onPressed: () {},
                                  child: Text(
                                    'Save [F4]',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .002,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: Size(
                                          MediaQuery.of(context).size.width *
                                              .1,
                                          25),
                                      shape: BeveledRectangleBorder(
                                          side: BorderSide(
                                              color: Colors.black, width: .3)),
                                      backgroundColor: Colors.yellow.shade100),
                                  onPressed: () {},
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .002,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
