import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:flutter/material.dart';

class EditSucces extends StatelessWidget {
  const EditSucces({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Nice Update!",
                style:
                    blackTextSytle.copyWith(fontSize: 20, fontWeight: semiBold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 26,
              ),
              Text(
                "Your data is safe with\nour system",
                style:
                    greyTextSytle.copyWith(fontSize: 16, fontWeight: reguler),
                textAlign: TextAlign.center,
              ),
             const SizedBox(
                height: 50,
              ),
              CustomFilledButton(
                title: "My Profile",
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