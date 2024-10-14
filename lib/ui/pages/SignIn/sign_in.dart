import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:bank_sha/ui/widget/textform.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
            "Sign In &\nGrow Your Finance",
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
                  const Textform(
                    title: "Email Addres",
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  // Password
                  const Textform(
                    title: "Password",
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forgot Password", style: lightBlueTextSytle),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomFilledButton(
                    title: "Sign In",
                    onPressed: () {},
                  )
                ]),
          ),
          const SizedBox(
            height: 50,
          ),
          GestureText(
            title: "Create New Account",
            onTap: () {
              Navigator.pushNamed(context, '/sign-up');
            },
          )
        ],
      ),
    ));
  }
}
