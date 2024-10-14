import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:bank_sha/ui/widget/textform.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteLightColor,
      appBar: AppBar(
        title: Text(
          "Edit Foto",
          style: blackTextSytle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: whiteColor),
              child: Column(
                  //EMAIL
                  children: [
                    const Textform(
                      title: "Username",
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Textform(
                      title: "Full Name",
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    // Password
                    const Textform(
                      title: "Email Addres",
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Textform(
                      obscureText: true,
                      title: "Password",
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomFilledButton(
                      title: "Update Now",
                      onPressed: () {
                        Navigator.pushNamed(context, '/edit-succes');
                      },
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
