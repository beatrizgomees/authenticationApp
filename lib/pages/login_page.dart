import 'package:authentication_app/auth/auth_controller.dart';
import 'package:authentication_app/shared/components/custom_button_component.dart';
import 'package:authentication_app/shared/components/text_form_field_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;
  AuthController _authController = AuthController();
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    _animation = Tween<Offset>(
      begin: Offset(0.0, -1.0), // Começa acima da tela
      end: Offset(0.0, 0.0), // Desce até a metade da tela
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // Inicia a animação assim que a tela for construída
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SlideTransition(
                  position: _animation,
                  child: Container(
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
                          filled: true,
                          keyboardType: TextInputType.emailAddress,
                          controller: _authController.emailControllerText,
                        ),
                        TextFormFieldComponent(
                          title: 'Passowrd',
                          colorFill: Color.fromRGBO(245, 247, 248, 1),
                          colorFocus: Color.fromRGBO(245, 247, 248, 1),
                          filled: true,
                          keyboardType: TextInputType.text,
                          isObscureText: true,
                          controller: _authController.passwordControllerText,
                        ),
                        CustomButtonComponent(
                          widthAsset: 0,
                          heighAsset: 0,
                          title: 'Sign In',
                          widthButton: MediaQuery.of(context).size.width,
                          heightButton: 50,
                          assetPath: '',
                          textColor: Colors.black,
                          color: Colors.white,
                          onTap: () {
                            _authController.loginUser(
                                _authController.emailControllerText,
                                _authController.passwordControllerText);
                          },
                        ),
                      ],
                    ),
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
                      widthButton: 160,
                      onTap: () {},
                    ),
                    CustomButtonComponent(
                      title: 'Google',
                      color: Color.fromRGBO(41, 41, 41, 1),
                      textColor: Colors.white,
                      heightButton: 50,
                      widthButton: 160,
                      widthAsset: 50,
                      heighAsset: 25,
                      assetPath: 'assets/icons/google.png',
                      onTap: () {},
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
                  onTap: () {
                    Navigator.pushNamed(context, '/register');
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
