import 'package:demo/widgets/cstmWidget.dart';
import 'package:flutter/material.dart';

class CustomRowTextField extends StatelessWidget {
  final String labelText1;
  final String labelText2;

  CustomRowTextField({required this.labelText1, required this.labelText2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomTextField(labelText: labelText1)),
        Expanded(child: CustomTextField(labelText: labelText2))
      ],
    );
  }
}
