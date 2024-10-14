import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeServices extends StatelessWidget {
  final String title;
  final String urlImg;
  final VoidCallback?ontap;

  HomeServices({
    super.key,
    required this.title,
    required this.urlImg,
    this.ontap,


  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ontap,
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Image.asset(
                urlImg,
                width: 26,
                height: 26,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(title, style: blackTextSytle.copyWith(fontWeight: medium),)
      ],
    );
  }
}
