import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(41, 41, 41, 1),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height - 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(200, 100),
                        bottomRight: Radius.elliptical(500, 100)),
                    color: Color.fromRGBO(255, 255, 155, 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/acesso.png',
                                width: 100,
                                height: 50,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          const Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              'Authentication',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Color.fromRGBO(41, 41, 41, 1),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              'App',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Color.fromRGBO(41, 41, 41, 1),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                              fillColor: Color.fromRGBO(245, 247, 248, 1),
                              label: const Text(
                                "Email",
                                style: TextStyle(
                                  color: Color.fromRGBO(41, 41, 41, 1),
                                ),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                            label: const Text(
                              "Password",
                              style: TextStyle(
                                color: Color.fromRGBO(41, 41, 41, 1),
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: GestureDetector(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromRGBO(41, 41, 41, 1),
                            ),
                            child: const Center(
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Dont have a acconunt?',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: GestureDetector(
                        child: Container(
                          width: 160,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Text(
                              "Facebook",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(41, 41, 41, 1),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: GestureDetector(
                        child: Container(
                          width: 160,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Text(
                              "Google",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(41, 41, 41, 1),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: GestureDetector(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromRGBO(255, 255, 255, 1)),
                      child: const Center(
                        child: Text(
                          "Sign up with email",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(41, 41, 41, 1),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
