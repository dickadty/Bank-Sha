import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class DataItemProvider extends StatelessWidget {
  final String title;
  final String subtitle;
  final String urlImg;
  final bool isSelect;

  DataItemProvider(
      {this.isSelect = false,
      required this.urlImg,
      required this.subtitle,
      required this.title,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            urlImg,
            height: 30,
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style:
                    blackTextSytle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              Text(
                subtitle,
                style: greyTextSytle.copyWith(fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
