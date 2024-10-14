import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:bank_sha/ui/widget/textform.dart';
import 'package:flutter/material.dart';

class Pic extends StatelessWidget {
  const Pic({super.key});

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
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: lightBackgroundColor),
                    child: Center(
                      child: Image.asset(
                        'assets/images/img1.png',
                        width: 120,
                        height: 120,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Dicky Aditya",
                    style: blackTextSytle.copyWith(
                        fontSize: 18, fontWeight: medium),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Textform(
                    title: "Set PIN (6 digit number)",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomFilledButton(
                    title: "CONTINUE",
                    onPressed: () {
                      Navigator.pushNamed(context, '/passport');
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
