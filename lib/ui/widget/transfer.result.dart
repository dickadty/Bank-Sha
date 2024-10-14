import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class TransferResult extends StatelessWidget {
  final String name;
  final String username;
  final String urlImg;
  final bool isSelect;
  final bool isVerifed;
  const TransferResult(
      {this.isVerifed = false,
      this.isSelect = false,
      required this.urlImg,
      required this.name,
      required this.username,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 182,
      width: 160,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
        border: Border.all(
          color: isSelect ? lightBlueColor : whiteColor,
          width: 2, 
        )
      ),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(urlImg)),
            ),
            alignment: Alignment.topRight,
            child: Container(
                height: 16,
                width: 16,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: whiteColor),
                child: Center(
                    child: Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 14,
                ))),
          ),
          const SizedBox(
            height: 13,
          ),
          Text(
            name,
            style: blackTextSytle.copyWith(fontSize: 16, fontWeight: medium),
          ),
         const SizedBox(
            height: 2,
          ),
          Text(
            '@$username',
            style: greyTextSytle.copyWith(fontSize: 12),
          )
         ],
      ),
    );
  }
}
