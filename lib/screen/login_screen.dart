import 'package:authentication_app/shared/components/custom_button_component.dart';
import 'package:authentication_app/shared/components/text_form_field_component.dart';
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
                      TextFormFieldComponent(
                          title: 'Email',
                          colorFill: Color.fromRGBO(245, 247, 248, 1),
                          colorFocus: Color.fromRGBO(245, 247, 248, 1),
                          filled: true),
                      TextFormFieldComponent(
                          title: 'Passowrd',
                          colorFill: Color.fromRGBO(245, 247, 248, 1),
                          colorFocus: Color.fromRGBO(245, 247, 248, 1),
                          filled: true),
                      CustomButtonComponent(
                          widthAsset: 0,
                          heighAsset: 0,
                          title: 'Sign In',
                          widthButton: MediaQuery.of(context).size.width,
                          heightButton: 50,
                          assetPath: '',
                          textColor: Colors.black,
                          color: Colors.white)
                    ],
                  ),
                ),
                const Text(
                  'Dont have a account?',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButtonComponent(
                        title: 'Facebook',
                        color: Color.fromRGBO(41, 41, 41, 1),
                        textColor: Colors.white,
                        assetPath: 'assets/icons/facebook.png',
                        widthAsset: 50,
                        heighAsset: 25,
                        heightButton: 50,
                        widthButton: 160),
                    CustomButtonComponent(
                      title: 'Google',
                      color: Color.fromRGBO(41, 41, 41, 1),
                      textColor: Colors.white,
                      heightButton: 50,
                      widthButton: 160,
                      widthAsset: 50,
                      heighAsset: 25,
                      assetPath: 'assets/icons/google.png',
                    )
                  ],
                ),
                CustomButtonComponent(
                  title: 'Sign up with email',
                  widthButton: MediaQuery.of(context).size.width,
                  heightButton: 50,
                  textColor: Colors.white,
                  assetPath: '',
                  widthAsset: 160,
                  heighAsset: 50,
                  color: Color.fromRGBO(41, 41, 41, 1),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
