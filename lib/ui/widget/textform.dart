import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class Textform extends StatelessWidget {
  final String title;
  final bool obscureText;
  final bool isShowTitle;
  final Color? filledcolor;
  final bool filled;
  final Color? borderColor; // Tambahkan properti untuk warna border

  const Textform({
    this.filledcolor,
    this.filled = true,
    required this.title,
    this.isShowTitle = true,
    this.obscureText = false,
    this.borderColor, 
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isShowTitle)
          Text(
            title,
            style: blackTextSytle.copyWith(fontSize: 14, fontWeight: medium),
          ),
        if (isShowTitle)
          const SizedBox(
            height: 8,
          ),
        TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
            fillColor: filledcolor,
            filled: true,
            hintText: !isShowTitle ? title : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                color: borderColor ?? Colors.grey, 
                width: 2, // Atur ketebalan border
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                color: borderColor ?? Colors.grey, // Warna border saat input tidak aktif
                width: 2,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                color: borderColor ?? lightBlueColor,
                width: 2,
              ),
            ),
            contentPadding: const EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}
