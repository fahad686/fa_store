import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 21, top: 50),
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
                  "Login",
                  style: TextStyle(
                    color: Color(0xff5D5D5D),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Form(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 26, top: 76, right: 26),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          labelText: 'Email',
                          hintText: 'email123@gmail.com',
                          prefixIcon: Icon(Icons.email_outlined),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 26, top: 31, right: 26),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          labelText: 'Password',
                          hintText: '********',
                          prefixIcon: Icon(Icons.password),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Padding(
                      padding: const EdgeInsets.only(right: 26),
                      child: Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Text(
                          'Forgot your password?',
                          style: TextStyle(
                            fontSize: 17,
                            color: Color(0xff5D5D5D),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
