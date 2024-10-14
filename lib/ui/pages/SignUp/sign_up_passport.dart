import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:flutter/material.dart';

class Passport extends StatelessWidget {
  const Passport({super.key});

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
            "Verify Your\nAccount",
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
                        'assets/images/ic_Upload.png',
                        width: 32,
                        height: 32,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Passport/ID Card",
                    style: blackTextSytle.copyWith(
                        fontSize: 18, fontWeight: medium),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomFilledButton(
                    title: "CONTINUE",
                    onPressed: () {
                      Navigator.pushNamed(context, '/succes');
                    },
                  )
                ]),
          ),
          const SizedBox(
            height: 50,
          ),
          GestureText(
            title: "Skip for Now",
            onTap: () {},
          )
        ],
      ),
    ));
  }
}
