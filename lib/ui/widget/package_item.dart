import 'package:bank_sha/shared/shared_method.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class PackageItemProvider extends StatelessWidget {
  final String data;
  final String harga;
  final bool isSelect;

  const PackageItemProvider(
      {required this.data,
      required this.harga,
      this.isSelect = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 182,
      width: 160,
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 50),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
          border: Border.all(
            color: isSelect ? lightBlueColor : whiteColor,
            width: 2,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
       
          Text(
            data,
            style: blackTextSytle.copyWith(fontSize: 32, fontWeight: medium),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            formatCurrency(double.parse(harga)),
            style: greyTextSytle.copyWith(fontSize: 12),
          )
        ],
      ),
    );
  }
}
