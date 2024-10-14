import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';


class Latest extends StatelessWidget {
  final String value;
  final String title;
  final String date;
  final String urlImg;

   const Latest({
    required this.title,
    required this.date,
    required this.urlImg,
    required this.value,

    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset(urlImg, width: 46, height: 46),
          const SizedBox(width: 16,),
          Expanded(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: blackTextSytle.copyWith(fontSize: 16, fontWeight: medium)),
                const SizedBox(height: 2,),
                Text(date, style: greyTextSytle.copyWith(fontSize: 12, fontWeight: reguler))
            
              ],
            ),
          ),
          Text(value, style: blackTextSytle.copyWith(fontSize: 16, fontWeight: medium),)
          
        ],
      ),
    );
  }
}
