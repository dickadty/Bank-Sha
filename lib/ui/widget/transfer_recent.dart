import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class TransferRecent extends StatelessWidget {
  final String name;
  final String username;
  final String urlImg;
  final bool isSelect;
  final bool isVerifed;
  const TransferRecent(
      {
      this.isVerifed = false,
      this.isSelect = false,
      required this.urlImg,
      required this.name,
      required this.username,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 18),
      height: 87,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
              color: isSelect ? lightBlueColor : whiteColor, width: 2),
          color: whiteColor,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            urlImg,
            width: 45,
            height: 45,
          ),
          const SizedBox(
            width: 14,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style:
                    blackTextSytle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              Text(
                '@$username',
                style: greyTextSytle.copyWith(fontSize: 12),
              )
            ],
          ),
          const Spacer(),
       if(isVerifed == true)   Row(
            children: [
              Icon(
                Icons.check_circle,
                color: greenColor,
              ),
              Text(
                "Verified",
                style: greenTextStyle.copyWith(
                  fontSize: 12,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
