// // class _EditableTableState extends State<EditableTable> {
// //   List<List<TextEditingController>> controllersList = [];

// //   @override
// //   void initState() {
// //     super.initState();
// //     // Initialize controllersList with an empty row
// //     controllersList.add(List.generate(5, (_) => TextEditingController()));
// //   }

// //   // Rest of the code...
// // }
// // // Inside the build method

// onChanged: (value) {
//   if (index == 4 && controllersList.last.every((controller) => controller.text.isNotEmpty)) {
//     // Add a new row when all text fields in the current row are filled
//     setState(() {
//       controllersList.add(List.generate(5, (_) => TextEditingController()));
//     });
//   }
// },

