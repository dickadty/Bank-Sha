
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/button.dart';
import 'package:bank_sha/ui/widget/textform.dart';
import 'package:bank_sha/ui/widget/transfer_result.dart';
import 'package:bank_sha/ui/widget/transfer_recent.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Transfer",
          style: blackTextSytle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            "Search",
            style: blackTextSytle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 16,
          ),
          Textform(
            filled: true,
            filledcolor: whiteColor,
            title: "by username",
            isShowTitle: false,
          ),
          // buildRecentUser(),
          buildResult(context),

        ],
      ),
    );
  }
}

Widget buildRecentUser() {
  return Container(
    margin: const EdgeInsets.only(top: 40),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent User',
          style: blackTextSytle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransferRecent(
          isVerifed: true,
          urlImg: 'assets/images/photo1.png',
          name: "Yoanna Jie",
          username: "yoenna",
        ),
        const TransferRecent(
          urlImg: 'assets/images/photo3.png',
          name: "John Hi",
          username: "jhi",
        ),
        const TransferRecent(
          urlImg: 'assets/images/photo4.png',
          name: "Masayoshi",
          username: "form",
        ),
      ],
    ),
  );
}

Widget buildResult(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(top: 40),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent User',
          style: blackTextSytle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
        const SizedBox(height: 14),
         Wrap(
          spacing: 20,
          runSpacing: 20,
          children:[
            TransferResult(
              isVerifed: true,
              urlImg: 'assets/images/photo1.png',
              name: "Yoanna Jie",
              username: "yoenna",
              isSelect: true,
            ),
            TransferResult(
              isVerifed: true,
              urlImg: 'assets/images/photo2.png',
              name: "John Chi",
              username: "jhi",
            ),
            TransferResult(
              isVerifed: true,
              urlImg: 'assets/images/photo3.png',
              name: "Masayoshi",
              username: "form",
            ),
            TransferResult(
              isVerifed: true,
              urlImg: 'assets/images/photo4.png',
              name: "Yuji",
              username: "yuji123",
            ),
            SizedBox(height: 271,),
            CustomFilledButton(title: "CONTINUE", onPressed: () {
              Navigator.pushNamed(context, '/transfer-amount');
            },),
          ],
        ),
      ],
    ),
  );
}
