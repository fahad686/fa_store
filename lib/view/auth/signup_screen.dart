import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../widget/inputtext_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 21, top: 70),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.close,
                  color: Colors.black,
                  size: 22,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 26, top: 18),
              child: Text(
                "SignUp",
                style: TextStyle(
                  color: Color(0xff5D5D5D),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //SignUp form
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: CustomTextFormField(
                  textLabel: "Full Name",
                  fieldIcon: Icon(Icons.person_2_outlined),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
