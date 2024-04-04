import 'package:authentication_app/src/shared/components/custom_button_component.dart';
import 'package:authentication_app/src/shared/components/text_form_field_component.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _animation = Tween<Offset>(
      begin: Offset(0.0, 1.0), // Começa acima da tela
      end: Offset(0.0, -0.8), // Desce até a metade da tela
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
            SlideTransition(
              position: _animation,
              child: Container(
                height: MediaQuery.of(context).size.height - 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(90, 20),
                      topRight: Radius.elliptical(350, 120)),
                  color: Color.fromRGBO(253, 10, 96, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Center(
                child: Image.asset(
                  'assets/images/acesso.png',
                  width: 50,
                  height: 50,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Registration",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(253, 10, 96, 1),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Create an account",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextFormFieldComponent(
                      title: 'Name',
                      colorFill: Colors.white,
                      colorFocus: Color.fromRGBO(253, 10, 96, 1),
                      filled: true,
                      keyboardType: TextInputType.text),
                  TextFormFieldComponent(
                    title: 'Username',
                    colorFill: Colors.white,
                    colorFocus: Color.fromRGBO(253, 10, 96, 1),
                    filled: true,
                    keyboardType: TextInputType.text,
                  ),
                  TextFormFieldComponent(
                    title: 'Email',
                    colorFill: Colors.white,
                    colorFocus: Color.fromRGBO(253, 10, 96, 1),
                    filled: true,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFormFieldComponent(
                    title: 'Password',
                    colorFill: Colors.white,
                    colorFocus: Color.fromRGBO(253, 10, 96, 1),
                    filled: true,
                    keyboardType: TextInputType.text,
                    isObscureText: true,
                  ),
                  CustomButtonComponent(
                    title: 'Register',
                    color: Color.fromRGBO(253, 10, 96, 1),
                    textColor: Colors.white,
                    heightButton: 50,
                    widthButton: MediaQuery.of(context).size.width,
                    assetPath: '',
                    heighAsset: 0,
                    widthAsset: 0,
                    onTap: () {},
                  ),
                  SizedBox(height: 25),
                  const Center(
                    child: Text(
                      "Alredy have a account?",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  CustomButtonComponent(
                    title: 'Login',
                    color: Color.fromRGBO(41, 41, 41, 1),
                    textColor: Colors.white,
                    heightButton: 50,
                    widthButton: MediaQuery.of(context).size.width,
                    assetPath: '',
                    heighAsset: 0,
                    widthAsset: 0,
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
