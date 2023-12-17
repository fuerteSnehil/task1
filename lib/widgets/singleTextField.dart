import 'package:flutter/material.dart';

class SingleTextField extends StatelessWidget {
  final String labelText;

  SingleTextField({required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              labelText + ' :',
              style: TextStyle(
                  fontSize: 13, color: const Color.fromARGB(255, 14, 63, 147)),
            ),
          ),
        ),
        Expanded(
          flex: 8,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              height: MediaQuery.of(context).size.height * .055,
              child: TextField(
                style: TextStyle(fontWeight: FontWeight.bold),
                cursorHeight: 21,
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
