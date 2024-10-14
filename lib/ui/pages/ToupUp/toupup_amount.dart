import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class ToupUpAmount extends StatefulWidget {
  const ToupUpAmount({super.key});

  @override
  State<ToupUpAmount> createState() => _ToupUpAmountState();
}

class _ToupUpAmountState extends State<ToupUpAmount> {
  final TextEditingController amountController =
      TextEditingController(text: '0');
  bool isUpdating = false;

  addAmount(String number) {
    if (amountController.text == '0') {
      amountController.text = '';
    }

    setState(() {
      amountController.text = amountController.text + number;
    });
  }

  @override
  void initState() {
    super.initState();

    amountController.addListener(() {
      if (isUpdating) return; 
      
      final text = amountController.text.replaceAll(".", "");
      isUpdating = true; 
      amountController.value = amountController.value.copyWith(
        text: NumberFormat.currency(
                locale: 'id', decimalDigits: 0, symbol: "")
            .format(int.tryParse(text) ?? 0),
      );
      isUpdating = false;
    });
  }

  deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text.substring(0, amountController.text.length - 1);
        if (amountController.text.isEmpty) {
          amountController.text = '0';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgorund,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 58),
          children: [
            Column(children: [
              const SizedBox(
                height: 36,
              ),
              Text(
                "Total Amount",
                style:
                    whiteTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
              ),
              const SizedBox(
                height: 67,
              ),
              SizedBox(
                  width: 200,
                  child: TextFormField(
                    controller: amountController,
                    cursorColor: greyColor,
                    enabled: false,
                    style: whiteTextStyle.copyWith(
                      fontSize: 36,
                      fontWeight: medium,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Text("Rp ",
                          style: whiteTextStyle.copyWith(
                              fontSize: 36, fontWeight: medium)),
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
                        addAmount("1");
                      }),
                  CustomInputButton(
                      title: "2",
                      onTap: () {
                        addAmount("2");
                      }),
                  CustomInputButton(
                      title: "3",
                      onTap: () {
                        addAmount("3");
                      }),
                  CustomInputButton(
                      title: "4",
                      onTap: () {
                        addAmount("4");
                      }),
                  CustomInputButton(
                      title: "5",
                      onTap: () {
                        addAmount("5");
                      }),
                  CustomInputButton(
                      title: "6",
                      onTap: () {
                        addAmount("6");
                      }),
                  CustomInputButton(
                      title: "7",
                      onTap: () {
                        addAmount("7");
                      }),
                  CustomInputButton(
                      title: "8",
                      onTap: () {
                        addAmount("8");
                      }),
                  CustomInputButton(
                      title: "9",
                      onTap: () {
                        addAmount("9");
                      }),
                  const SizedBox(
                    height: 60,
                    width: 60,
                  ),
                  CustomInputButton(
                      title: "0",
                      onTap: () {
                        addAmount("0");
                      }),
                  GestureDetector(
                    onTap: () {
                      deleteAmount();
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
              const SizedBox(
                height: 50,
              ),
              CustomFilledButton(
                  title: "CONTINUE",
                  onPressed: () async {
                    if (await Navigator.pushNamed(context, '/pin') == true) {
                      await launchUrl(Uri.parse('https://demo.midtrans.com'));
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/toupup-succes', (Route) => false);
                    }
                  }),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Terms & Conditions",
                style: greyTextSytle.copyWith(fontSize: 16),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
