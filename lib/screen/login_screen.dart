import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height - 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(90, 20),
                        bottomRight: Radius.elliptical(350, 120)),
                    color: Color.fromRGBO(253, 10, 96, 1),
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
                                height: 60,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          const Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              'Authentication',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              'App',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
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
                              filled: true,
                              focusColor: Color.fromRGBO(245, 247, 248, 1),
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                            fillColor: Color.fromRGBO(245, 247, 248, 1),
                            filled: true,
                            focusColor: Color.fromRGBO(245, 247, 248, 1),
                            hintText: 'Password',
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
                              color: Colors.white,
                            ),
                            child: const Center(
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Dont have a account?',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
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
                            color: Color.fromRGBO(41, 41, 41, 1),
                          ),
                          child: const Center(
                            child: Text(
                              "Facebook",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
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
                            color: Color.fromRGBO(41, 41, 41, 1),
                          ),
                          child: const Center(
                            child: Text(
                              "Google",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
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
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            spreadRadius: 4,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
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
