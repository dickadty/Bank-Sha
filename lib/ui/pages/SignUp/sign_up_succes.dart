import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:flutter/material.dart';

class SignUpSucces extends StatelessWidget {
  const SignUpSucces({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Akun Berhasil\nTerdaftar",
                style:
                    blackTextSytle.copyWith(fontSize: 20, fontWeight: semiBold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 26,
              ),
              Text(
                "Grow your finance start\ntogether with us",
                style:
                    greyTextSytle.copyWith(fontSize: 16, fontWeight: reguler),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              CustomFilledButton(
                title: "Get Started",
                width: 183,
                height: 50,
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
