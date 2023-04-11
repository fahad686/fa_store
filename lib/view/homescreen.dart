import 'package:flutter/material.dart';

import 'auth/login_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        text: const TextSpan(
                          text: 'Welcome to ',
                          style: TextStyle(fontSize: 20, color: Colors.black45),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'AYS',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Explore US',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 70),
                    child: Image.asset('assets/png/home/Image.png'),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: Container(
                    width: 270,
                    height: 55,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Color(0xFFFDAB83), Color(0xFFF7849B)],
                        )),
                    child: const Center(
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(45),
                    child: Text(
                      'Signup',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF454242),
                      ),
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    'Skip',
                    style: TextStyle(
                        fontSize: 20,
                        decoration: TextDecoration.underline,
                        color: Color(0xFFB9B9B9)),
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
