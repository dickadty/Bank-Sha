import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/bank_item.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:flutter/material.dart';

class ToupUp extends StatelessWidget {
  const ToupUp({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wallet",
                  style: blackTextSytle.copyWith(
                      fontSize: 16, fontWeight: semiBold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(children: [
                  Image.asset(
                    'assets/images/wallet.png',
                    width: 85,
                    height: 55,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "8008 2208 1996",
                        style: blackTextSytle.copyWith(
                            fontSize: 16, fontWeight: medium),
                      ),
                      Text(
                        "Shayna Hanna",
                        style: greyTextSytle.copyWith(fontSize: 12),
                      )
                    ],
                  )
                ]),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Selet Bank",
                  style: blackTextSytle.copyWith(
                      fontSize: 16, fontWeight: semiBold),
                ),
                const SizedBox(
                  height: 14,
                ),
                const BankItem(
                  urlImg: 'assets/images/bca.png',
                  title: "BANK BCA",
                  subtitle: "50 mins",
                  isSelect: true,
                ),
                const BankItem(
                  urlImg: 'assets/images/bni.png',
                  title: "BANK BNI",
                  subtitle: "50 mins",
                ),
                const BankItem(
                  urlImg: 'assets/images/mandiri.png',
                  title: "BANK MANDIRI",
                  subtitle: "50 mins",
                ),
                 BankItem(
                  urlImg: 'assets/images/oc.png',
                  title: "BANK OCBC",
                  subtitle: "50 mins",
    
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(title: "CONTINUE", onPressed: () {
                  Navigator.pushNamed(context, '/toupup-amount');
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
