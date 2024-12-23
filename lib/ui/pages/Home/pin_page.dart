import 'package:another_flushbar/flushbar.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:flutter/material.dart';

import '../../../shared/shared_method.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final TextEditingController pinController = TextEditingController(text: '');

  addPin(String number) {
    if (pinController.text.length < 6) {
      setState(() {
        pinController.text = pinController.text + number;
      });
    }

    if (pinController.text.length == 6) {
      if (pinController.text == '123456') {
        Navigator.pop(context, true);
      } else {
        showCustomSnackbar(
            context, "PIN yang anda masukkan salah. Silakan coba lagi.");
      }
    }
  }

  deletePin() {
    if (pinController.text.isNotEmpty) {
      setState(() {
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgorund,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 57,
          ),
          child: Center(
            child: Column(
              children: [
                Text(
                  "Sha PIN",
                  style: whiteTextStyle.copyWith(
                      fontSize: 20, fontWeight: semiBold),
                ),
                const SizedBox(
                  height: 72,
                ),
                SizedBox(
                    width: 200,
                    child: TextFormField(
                      controller: pinController,
                      obscureText: true,
                      cursorColor: greyColor,
                      enabled: false,
                      style: whiteTextStyle.copyWith(
                          fontSize: 36, fontWeight: medium, letterSpacing: 16),
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        disabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: greyColor),
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 66,
                ),
                Wrap(
                  spacing: 40,
                  runSpacing: 53,
                  children: [
                    CustomInputButton(
                        title: "1",
                        onTap: () {
                          addPin("1");
                        }),
                    CustomInputButton(
                        title: "2",
                        onTap: () {
                          addPin("2");
                        }),
                    CustomInputButton(
                        title: "3",
                        onTap: () {
                          addPin("3");
                        }),
                    CustomInputButton(
                        title: "4",
                        onTap: () {
                          addPin("4");
                        }),
                    CustomInputButton(
                        title: "5",
                        onTap: () {
                          addPin("5");
                        }),
                    CustomInputButton(
                        title: "6",
                        onTap: () {
                          addPin("6");
                        }),
                    CustomInputButton(
                        title: "7",
                        onTap: () {
                          addPin("7");
                        }),
                    CustomInputButton(
                        title: "8",
                        onTap: () {
                          addPin("8");
                        }),
                    CustomInputButton(
                        title: "9",
                        onTap: () {
                          addPin("9");
                        }),
                    const SizedBox(
                      height: 60,
                      width: 60,
                    ),
                    CustomInputButton(
                        title: "0",
                        onTap: () {
                          addPin("0");
                        }),
                    GestureDetector(
                      onTap: () {
                        deletePin();
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: lightBlackColor,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                            child: Icon(
                          Icons.arrow_back,
                          color: whiteColor,
                        )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
