import 'package:flutter/material.dart';
import 'package:bot_final/utilities/color.dart';
import 'package:bot_final/screens/sign_in.dart';
import 'package:bot_final/screens/name.dart';
import 'package:bot_final/screens/time.dart';
import 'package:bot_final/screens/chat_screen.dart';

class SignUP extends StatelessWidget {
  const SignUP({super.key});

  @override
  Widget build(BuildContext context) {
    final NameController = TextEditingController();
    final EmailController = TextEditingController();
    final PasswordController = TextEditingController();
    return Scaffold(
        // ignore: avoid_unnecessary_containers
        appBar: AppBar(
        title: const Text('CREATE ACCOUNT'),
      ),
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
                        hintText:'Email'),
                        controller:EmailController,
                        textInputAction:TextInputAction.next),
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
                        hintText:'Password'),
                         controller:EmailController,
                        textInputAction:TextInputAction.done),
            const Text('Already have an account?Log In',
                style: TextStyle(color: AppColors.buttonText)),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  // ignore: avoid_print
                  onPressed: () => {Navigator.pushNamed(context, '/time')},
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
