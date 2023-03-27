import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:bot_final/utilities/color.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();

   @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Log In')),
        // ignore: avoid_unnecessary_containers
        body: Container(
            child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                    decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.buttonText),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.buttonText),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            )),
                        hintText: 'Email'),
                    controller: EmailController,
                    textInputAction: TextInputAction.next),
                TextFormField(
                    decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.buttonText),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.buttonText),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            )),
                        hintText: 'Password'),
                    controller: PasswordController,
                    textInputAction: TextInputAction.done),
                const Text('Forgot password ?',
                    style: TextStyle(color: AppColors.buttonText)),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      // ignore: avoid_print
                                        onPressed: () => {Navigator.pushNamed(context, '/chatscreen')},

                      style: TextButton.styleFrom(
                          backgroundColor: AppColors.button,
                          fixedSize: const Size(227, 61),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0))),

                      child: const Text('Next',
                          style: TextStyle(color: AppColors.buttonText)),
                    )),
              ]),
        )));
  }

 
}
