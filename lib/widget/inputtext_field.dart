import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String textLabel;
  final Icon fieldIcon;
  const CustomTextFormField(
      {super.key, required this.textLabel, required this.fieldIcon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Form(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      label: Text("UserName"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: Icon(
                        Icons.person_2_outlined,
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
