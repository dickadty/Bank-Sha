import 'package:bank_sha/shared/shared_method.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:bank_sha/ui/widget/textform.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  final nameController = TextEditingController(text: "");
  final emailController = TextEditingController(text: "");
  final passwordController = TextEditingController(text: "");

  bool validate() {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
          return false;
        }
    return true;
  }

  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
              width: 150,
              height: 50,
              margin: EdgeInsets.only(top: 100),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/img_logo_light.png')))),
          const SizedBox(
            height: 100,
          ),
          Text(
            "Join Us to Unlock\nYour Growth,",
            style: blackTextSytle.copyWith(fontSize: 20, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: whiteColor),
            child: Column(
                //EMAIL
                children: [
                  Textform(
                    controller: widget.nameController,
                    title: "Full Name",
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Textform(
                    controller: widget.emailController,
                    obscureText: false,
                    title: "Email Addres",
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  // Password
                  Textform(
                    controller: widget.passwordController,
                    obscureText: true,
                    title: "Password",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomFilledButton(
                    title: "CONTINUE",
                    onPressed: () {
                    if(widget.validate()){
                       Navigator.pushNamed(context, '/upload');
                    }
                     return showCustomSnackbar(context, "Please fill all fields");
                    },
                    
                  )
                ]),
          ),
          const SizedBox(
            height: 50,
          ),
          GestureText(
            title: "Sign In",
            onTap: () {},
          )
        ],
      ),
    ));
  }
}
