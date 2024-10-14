import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeSend extends StatelessWidget {
  final String urlImg;
  final String username;

  const HomeSend({
    required this.urlImg,
    required this.username,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 120,
      margin: const EdgeInsets.only(right: 17), 
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20)
        ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(urlImg),
                fit: BoxFit.cover
              )
            ),
          ),
          const SizedBox(height: 13,),
          Text('@$username', style: blackTextSytle.copyWith(
            fontSize: 12,
            fontWeight: medium,
          ),),
        ],
      ),
    );

  }
}